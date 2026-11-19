#!/usr/bin/env python3
"""
批量翻译字典骨架 → 机器翻译初稿 (Google Translate free)
用法:  python3 translate_dict.py [start_idx] [end_idx] [job_idx]
不传参: 默认跑每条 job 的前 60 条 (约 6-10s)
       job_idx = 0..len(JOBS)-1, 只跑指定那条; 留空跑全部
       已翻译(右值非空)的条目自动跳过, 不会覆盖人工译稿
"""
import re, subprocess, time, json, urllib.parse, sys, os

# 翻译任务配置: (源字典, 源语言, 目标语言, 输出文件)
# 注意: uk-zh 翻译任务会跳过 395 条已有人工译稿, 只翻译空右值的新短语
JOBS = [
    ('lang/uk-zh.php', 'uk', 'zh', 'lang/uk-zh.mt.php'),
    ('lang/uk-uz.php', 'uk', 'uz', 'lang/uk-uz.mt.php'),
]
UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

def translate_one(text, src, tgt):
    q = urllib.parse.quote(text, safe='')
    url = f"https://translate.googleapis.com/translate_a/single?client=gtx&sl={src}&tl={tgt}&dt=t&q={q}"
    out = subprocess.check_output(
        ['curl','-s','--max-time','12','-A',UA,
         '-H','Referer: https://translate.google.com/',
         url],
        stderr=subprocess.DEVNULL
    ).decode()
    if not out or out.startswith('<'):
        raise RuntimeError(f'non-json: {out[:80]}')
    return json.loads(out)[0][0][0]

def load_pairs(path):
    src = open(path, encoding='utf-8').read()
    return re.findall(r"'((?:\\.|[^'\\])*)'\s*=>\s*'((?:\\.|[^'\\])*)'", src)

def esc(s):
    return s.replace("\\", "\\\\").replace("'", "\\'")

def write_dict(path, pairs, src_lang, tgt_lang):
    lines = ['<?php','/**',
             f' * 机器翻译初稿 (Google Translate, sl={src_lang} -> tl={tgt_lang})',
             ' * 校对后, 把文件名 *.mt.php 改回 *.php 即可覆盖线上字典.',
             ' * 当前 lang/ 只保留 uk-* 一族模板源字典; zh-* 一族已清理(冗余).',
             ' */',
             'return array(']
    for s, d in pairs:
        lines.append(f"\t'{esc(s)}' => '{esc(d)}',")
    lines.append(');')
    with open(path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines) + '\n')

def run_job(src_path, src_lang, tgt_lang, dst_path, start, end):
    pairs = load_pairs(src_path)
    total = len(pairs)
    if end <= 0 or end > total: end = total
    print(f'\n=== {src_path}  sl={src_lang}->tl={tgt_lang}  [{start},{end})  (总数 {total}) ===')
    done = 0
    t0 = time.time()
    for i in range(start, end):
        s, d = pairs[i]
        src = s.replace("\\'", "'").replace('\\\\', '\\')
        if not src.strip():
            continue
        if d:    # 已翻译, 跳过 (断点续传)
            done += 1
            continue
        for retry in range(3):
            try:
                pairs[i] = (s, translate_one(src, src_lang, tgt_lang))
                break
            except Exception as e:
                if retry < 2:
                    time.sleep(0.6)
                else:
                    pairs[i] = (s, '')
                    print(f'  [FAIL @{i}] {src!r}: {e}')
        done += 1
        if done % 10 == 0:
            write_dict(dst_path, pairs, src_lang, tgt_lang)
            elapsed = time.time() - t0
            speed = done / elapsed
            print(f'  [{i+1}/{total}] {done}/{end-start} done, {speed:.1f}it/s', flush=True)
        time.sleep(0.12)
    write_dict(dst_path, pairs, src_lang, tgt_lang)
    print(f'  ok -> {dst_path}  ({end-start} 条, 用时 {time.time()-t0:.1f}s)')

def main():
    args = sys.argv[1:]
    # 默认每段 60 条
    batch_size = 60
    job_idx = None  # None = 跑全部 jobs
    if args:
        try:
            start_arg = int(args[0])
            end_arg = int(args[1]) if len(args) > 1 else start_arg + batch_size
            if len(args) > 2:
                job_idx = int(args[2])
        except ValueError:
            print('usage: python3 translate_dict.py [start] [end] [job_idx]')
            sys.exit(1)
    else:
        start_arg = 0
        end_arg = batch_size

    jobs = JOBS if job_idx is None else [JOBS[job_idx]]
    for src_path, sl, tl, dst_path in jobs:
        pairs = load_pairs(src_path)
        run_job(src_path, sl, tl, dst_path, start_arg, end_arg)

if __name__ == '__main__':
    main()
