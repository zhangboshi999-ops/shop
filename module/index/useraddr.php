<?php
$menumark = 'useraddr';
pe_lead('hook/order.hook.php');
switch($act) {
	//####################// 添加地址 //####################//
	case 'add':
		if (isset($_p_pesubmit)) {
			pe_token_match();
			//if (!$cache_setting['web_guestbuy']) pe_jsonshow(array('result'=>false, 'show'=>'请先登录...'));
			if (!$_p_user_tname) pe_jsonshow(array('result'=>false, 'show'=>"请填写收货人。"));
			if (!pe_formcheck('phone', $_p_user_phone)) pe_jsonshow(array('result'=>false, 'show'=>"请填写有效的手机号。"));
			$sql_set['address_province'] = $_p_address_province;
			$sql_set['address_city'] = $_p_address_city;
			$sql_set['address_area'] = $_p_address_area;
			$sql_set['address_text'] = $_p_address_text;
			$sql_set['address_atime'] = time();
			$sql_set['address_default'] = intval($_p_address_default);
			$sql_set['user_id'] = $_s_user_id;
			$sql_set['user_name'] = $_s_user_name;
			$sql_set['user_tname'] = $_p_user_tname;
			$sql_set['user_phone'] = $_p_user_phone;
			useraddr_add($sql_set);					

		}
		$seo = pe_seo($menutitle="新增地址");
		include(pe_tpl('useraddr_add.html'));
	break;
	//####################// 地址列表 //####################//
	default:
		useraddr_list(pe_dbhold($_g_id));

	break;
}
?>