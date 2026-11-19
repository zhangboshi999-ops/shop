<?php

use ptpaysdk\core\PtSdk;
require_once dirname(__FILE__) . '/core/PtSdk.php';
$request_parameter = get_notify_parameter();
$pay = new PtSdk();
$type =$request_parameter['paytype'];
//创建订单需要构建的参数
$parameter = array(
    //支付方式 1.是微信，2是支付宝
    "type" =>$type =="wechat" ?1:2,
    //商户订单号
    "payId" => $request_parameter['id'],
    //自定义参数
    "param" => '网上购物',
    //金额
    "price" => $request_parameter['price'],
);

//创建订单,会自动跳转页面
echo $pay->createOrder($parameter);





