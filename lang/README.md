# 国际化(i18n) 字典使用说明

> **TL;DR**：页面已经是中文，改 `config.php` 里的 `$pe['lang']` 即可切换语言。
> 想新增一种语言：在 `lang/` 下加一个 `zh-<目标>.php` 文件即可，**不用改任何其他代码**。

---

## 切换语言（一句话）

打开 `config.php`，找到下面这行，改成你想要的语言代码：

```php
$pe['lang'] = 'zh';   // 改为 'en' 即全站英文
```

> 当前可用语言在 `config.php` 里白名单声明：`$pe['available_lang'] = array('zh', 'en');`
> 新增语言后把它加进这个数组即可（或直接删掉这行，让系统自动扫描 `lang/` 目录）。

---

## 当前架构（中文为源语言）

| 关键项 | 值 | 说明 |
|---|---|---|
| 源语言 `source_lang` | `zh` | 模板/模块里硬编码的就是中文，**这就是基准** |
| 默认语言 `lang` | `zh` | config.php（改这一个值就能切换） |
| 字典目录 `lang_dir` | `<站点根>/lang/` | 自动 |
| 可用语言 `available_lang` | `['zh','en','uk','de','ru']` | config.php 白名单 |

翻译原理：`pe_tpl()` 渲染模板时执行 `pe_front_translate()`，用 `strtr()` 把**中文源文**按
`zh-en.php` 字典替换成目标语言。`pe_error/pe_success/pe_jsonshow/pe_seo` 同样会自动翻译。

---

## 加入新语言：以"英语(en)"为例

### 第 1 步：复制一份字典骨架

```bash
cp lang/zh-en.php lang/zh-ja.php   # 例: 加日语
```

### 第 2 步：翻译右值

文件是普通 PHP 数组，**左值 = 中文源文，右值 = 译文**：

```php
<?php
return array(
    '首页'   => 'Home',      // 中文 -> 英语
    '登录'   => 'Login',
    '购物车' => 'Cart',
    // ...
);
```

- 用任何翻译工具（Google Translate、DeepL、专业译员）填充右侧译文
- 每翻译一条即可立即生效（无需重启、无需清缓存）
- 未命中的中文会原样显示（不会乱码），可以渐进式补全

### 第 3 步：改 `config.php`

```php
$pe['lang'] = 'en';                       // ← 改这一行
$pe['available_lang'] = array('zh','en'); // ← 把 'en' 加进白名单
```

### 第 4 步：验证

访问 `https://你的域名/index.php?lang=en` 看效果。或加切换链接：

```html
<a href="<?= pe_lang_url('en') ?>">English</a>
<a href="<?= pe_lang_url('zh') ?>">中文</a>
```

> 一切正确的标志：
> - 地址栏出现 `?lang=en`，刷新后仍记得（cookie 30 天）
> - 模板中**命中字典**的中文短语已变成英文
> - 没命中的中文保持原样（**不会乱码**）

---

## 字典文件命名规则

`<source>-<target>.php`，例如：

- `zh-en.php`  中文(源) → 英语

---

## 后台说明

- 后台管理模块（`webadmin`）始终用源语言（中文），便于运维。
- 模板缓存按语言分目录存放（`cache/template/{module}/{tpl}.{lang}.php`），切语言不互相污染。

---

## 当前可用字典（`lang/` 中）

| 文件 | 用途 |
|---|---|
| `zh-en.php` | 中文 → 英语 |
| `zh-uk.php` | 中文 → 乌克兰语 |
| `zh-de.php` | 中文 → 德语 |
| `zh-ru.php` | 中文 → 俄语 |
