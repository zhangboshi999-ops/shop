<?php
$pe['db_host'] = '127.0.0.1'; //数据库主机地址
$pe['db_name'] = 'arrtbelabbk'; //数据库名称
$pe['db_user'] = 'arrtbelabbk'; //数据库用户名
$pe['db_pw'] = '123456'; //数据库密码
$pe['db_coding'] = 'utf8';
$pe['url_model'] = 'pathinfo_safe'; //url模式,可选项(pathinfo/pathinfo_safe/php)
define('dbpre','xy_'); //数据库表前缀

// =============================================================
// i18n(国际化) 配置 —— 改下面 $pe['lang'] 一个值即可切换语言
//
// 【语言代码对照】
//   'zh' => 中文     (默认)
//   'en' => 英语
//   'uk' => 乌克兰语
//   'de' => 德语
//   'ru' => 俄语
//
// 【切换示例】
//   想用英语:     $pe['lang'] = 'en';
//   想用乌克兰语: $pe['lang'] = 'uk';
//   想用德语:     $pe['lang'] = 'de';
//   想用俄语:     $pe['lang'] = 'ru';
//   想改回中文:   $pe['lang'] = 'zh';
//
// 【新增语言】在 lang/ 目录加一份 zh-xx.php(例如 zh-ja.php 日语),
//   翻译右值后, 再把 'ja' 加进下面的 $pe['available_lang'] 白名单即可。
//
// 【其它说明】
//   • 源语言(source_lang)固定为中文, 模板/模块硬编码即中文, 不要改
//   • 语言完全由上面 $pe['lang'] 决定, 改一个值即全站切换
// =============================================================
$pe['lang']        = 'de';                        // 站点默认语言: 改成 'en' / 'uk' 即可切换
$pe['source_lang'] = 'zh';                        // 源语言: 中文(固定, 不要改)
$pe['available_lang'] = array('zh', 'en', 'uk', 'de', 'ru');  // 可用语言白名单

// =============================================================
// 时区配置 —— 按站点运营地区切换
//
// 【常用时区对照】
//   中国    => Asia/Shanghai        (当前)
//   乌克兰  => Europe/Kiev
//   英国    => Europe/London
//   德国    => Europe/Berlin
//   美国东部 => America/New_York
//   俄罗斯  => Europe/Moscow
//
// 【切换示例】把引号里的 'Asia/Shanghai' 直接改成上面的时区即可
// =============================================================
date_default_timezone_set($pe['timezone'] = 'Asia/Shanghai');
