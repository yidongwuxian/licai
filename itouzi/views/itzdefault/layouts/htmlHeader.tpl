<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="dns-prefetch" href="//css1.itzcdn.com">
<link rel="dns-prefetch" href="//js1.itzcdn.com">
<link rel="dns-prefetch" href="//css10-itzcdn-com.alikunlun.com">
<link rel="dns-prefetch" href="//js10-itzcdn-com.alikunlun.com">
<title><{$ItzView.title}></title>
<meta name="description" content="<{$ItzView.description}>">
<meta name="keywords" content="<{$ItzView.keywords}>">
<link rel="shortcut icon" href="<{$CONST.cssPath}>/static/old/favicon.ico"/>
<script>
    <{if $this->module->id == "itzdefault" && $this->getId() == "index" && $this->action->id == "index"}>
    var u = window.navigator.userAgent.toLowerCase();
    if(u.indexOf('iphone') > -1 || u.indexOf('android') > -1 ||  u.indexOf('ipod') > -1){
        var _query_url = location.search;
        if(_query_url.indexOf('force_www') < 0 ){
            window.location.href = "/itzdefault/wap/index";
        }
    }
    <{/if}>
	window.User = {
        "user_id": "<{$Itz.userInfo.user_id}>",
        "user_name": "<{$Itz.userInfo.username}>",
        "qn_score" :"<{$Itz.userInfo.qn_score}>",
        "real_name": "<{$Itz.userInfo.realname}>",
        "real_status": "<{$Itz.userInfo.real_status}>",
        "email_status": "<{$Itz.userInfo.email_status}>",
        "phone_status": "<{if $Itz.userInfo.phone_status == 1}>1<{else}>0<{/if}>",
        "con_id5_switch": "<{$Itz.system.con_id5_switch.value}>",
        "payPwd_status" : "<{if $userInfo.paypassword}>1<{/if}>",
        "question_status": "<{if $userInfo.question}>1<{/if}>",
        "todayIncome" :"<{if $Itz.userInfo.user_id}><{$Itz.userInfo.todayIncome|number_format:2}><{/if}>"
    };
    <{if $youxian_flag==true}>
    var youxianFlag = '<{$youxian_flag}>',//是否定向投资
        whiteInvestMoney= '<{$white_invest_money}>',//白名单
        pageName= '<{$this->id}>';//页面名字
    <{/if}>
</script>

<{if $this->action->id == "semregab" }>
<script type='text/javascript' src='//static.abtester.cn/boot/244.js' ></script>
<{/if}>

<{if $this->module->id == "dinvest" &&
($this->getId() == "invest" || $this->getId() == "lease" || $this->getId() == "debt") &&
$this->action->id == "detail"}>
<!--[if lt IE 9]>
    <script type="text/javascript" src="<{$CONST.cssPath}>/static/third/excanvas.compiled.js"></script>
<![endif]-->
<{/if}>
<{include file="`$CONST.viewPath`itzdefault/layouts/css.tpl"}>
</head>
