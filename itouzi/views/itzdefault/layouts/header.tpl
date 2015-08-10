<div class="hd">
    <{if $Itz.system.con_notice.value == 1}>
    <div class="website-important-notice">
        <div class="w-i-n-subwrap">
            <p class="w-i-n-con"><{$Itz.system.con_closemsg.value}></p>
        </div>
    </div>
    <{/if}>
    <{if $Itz.system.con_closeQmsg.value == 1}>
    <div class="website-important-notice" style="background:#ffe3e3">
        <div class="w-i-n-subwrap">
            <p class="w-i-n-con"><{$Itz.system.con_Qmsg_content.value}></p>
        </div>
    </div>
    <{/if}>
	<div class="hd-top">
		<div class="hd-inner clearfix">
			<div class="hd-website-menu">
				<a href="http://www.itouzi.com/itzdefault/event/mobile" target="_blank" class="hd-wap"><span class="icon-hdSprite icon-hd-wap"></span><span class="fl pdr-15 br1e6">移动客户端</span></a>
                <a href="<{$this->createUrl('/itzdefault/event/loanapp')}>" class="hd-save"><span class="fl pdr-15 br1e6">企业融资</span></a>
                <a href="<{$this->createUrl('/itzdefault/event/userguide')}>" class="hd-save"><span class="fl pdr-15 br1e6">新手引导</span></a>
                <a href="<{$this->createUrl('/itzdefault/event/activity')}>" class="hd-save"><span class="fl">活动专区</span></a>
			</div>
            <ul class="hd-quick-menu">
            	<li class="hd-quick-menu-sub pdl-15">
                	<a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index?ret_url=<{urlencode(yii::app()->c->baseUrlHttps)}>/newuser/main/index" class="hd-quick-menu-sub-a br1e6" target="_top"><span class="fl">我的账户</span><span class="icon-hdSprite icon-triangle-x a-r180"></span></a>
                    <span class="hd-triangle-1 fadeIn-1s">◆</span>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                	<ul class="hd-quick-help hd-quick-i-account fadeIn-1s">
                        <li><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/recharge?ret_url=<{urlencode(yii::app()->c->baseUrlHttps)}>/newuser/main/recharge" target="_top">充值</a></li>
                        <li><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/withdraw?ret_url=<{urlencode(yii::app()->c->baseUrlHttps)}>/newuser/main/withdraw" target="_top">提现</a></li>
                    	<li><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/account?ret_url=<{urlencode(yii::app()->c->baseUrlHttps)}>/newuser/main/account" target="_top">资产统计</a></li>
                        <li><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/trade?ret_url=<{urlencode(yii::app()->c->baseUrlHttps)}>/newuser/main/trade" target="_top">交易记录</a></li>
                    </ul>
                </li>
                <{*}>
                <li class="pdl-15" id="jinRiShouYi" style="display:none; width:auto;">
                <a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index"><span class="br1e6 pdr-15">日均赚取(<b class="fw-n em"></b>元)</span></a>
                </li>
                <li id="headerMsg" class="pdl-15" style="display:none; width:auto; white-space: nowrap;">
                    <a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/message" style="float:none; display: inline;" class="hd-quick-menu-sub-a pdr-15 br1e6"><span>消息(<em></em>)</span></a>
                </li>
                <{/*}>
                <li class="hd-quick-menu-sub pdl-15">
                	<a href="<{$this->createUrl('/itzdefault/help/index?idx=0')}>" class="hd-quick-menu-sub-a br1e6"><span class="fl">帮助中心</span><span class="icon-hdSprite icon-triangle-x a-r180"></span></a>
                    <span class="hd-triangle-1 fadeIn-1s">◆</span>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                	<ul class="hd-quick-help fadeIn-1s">
                    	<li><a href="<{$this->createUrl('/itzdefault/help/index?idx=2')}>">爱投资介绍</a></li>
                        <li><a href="<{$this->createUrl('/itzdefault/help/index?idx=4')}>">注册与登录</a></li>
                        <li><a href="<{$this->createUrl('/itzdefault/help/index?idx=5')}>">认证与安全</a></li>
                        <li><a href="<{$this->createUrl('/itzdefault/help/index?idx=7')}>">充值与提现</a></li>
                    </ul>
                </li>
                <li class="hd-quick-menu-contact pdl-15">
                	<a href="<{$this->createUrl('/itzdefault/about/contact')}>" class="hd-quick-menu-contact-a"><span class="fl">联系我们</span><span class="icon-hdSprite icon-triangle-x a-r180"></span></a>
                    <span class="hd-triangle-1 fadeIn-1s">◆</span>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                	<div class="hd-quick-contact fadeIn-1s">
                    	<div class="h-q-c-right icon-hd-erweima"></div>
                        <div class="h-q-c-center fl">
                        	<a href="http://e.weibo.com/itouzicom" target="_blank"><span class="icon-hdSprite icon-hd-sina"></span><span class="fl">新浪微博</span></a>
                            <a href="http://t.qq.com/itouzicom" target="_blank"><span class="icon-hdSprite icon-hd-qqweibo"></span><span class="fl">腾讯微博</span></a>
                            <a href="mailto:service@itouzi.com" target="_blank"><span class="icon-hdSprite icon-hd-email"></span><span class="fl">客服邮箱</span></a>
                        </div>
                        <div class="h-q-c-left fl">
                        	<h3 class="ffA">400-0088-100</h3>
                            <p>工作日9:00-21:00 / 节假日9:00-18:00</p>
                            <a href="http://qiao.baidu.com/v3/?module=default&controller=webim&action=index&siteid=2486763&groupid=0&groupname=%E6%8A%95%E8%B5%84%E5%92%A8%E8%AF%A2" class="h-q-c-serve" target="_blank">在线客服</a>
                        </div>
                    </div>
                </li>
                <{*}>
                <li class="hd-quick-menu-contact pdl-15">
                    <a href="<{$this->createUrl('/itzdefault/index/setSimplePage')}>" class="hd-quick-menu-contact-a"><span class="fl">体验新首页</span></a>
                </li>
                <{/*}>
            </ul>
		</div>
	</div>
	<div class="hd-content">
    	<div class="hd-inner clearfix">
           <a href="<{Yii::app()->c->baseUrlHttp}>"><img src="<{$CONST.cssPath}>/static/img/common/logo.jpg" class="hd-logo"  width="352" height="40" title="爱投资！让您爱上投资！" alt="爱投资！让您爱上投资！"/></a>
            <div class="hd-login">
                <{if $this->module->id == "itzdefault" && $this->getId() == "index" && $this->action->id == "index"}>
                <ul id="hsWrapper" class="hd-login-win" style="display:none">
                    <li class="h-l-w-item clearfix">
                        <a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index"><span class="fl mgr-5">您好，<strong></strong></span><span class="fl css-triangle a-r180"></span></a>
                        <div class="hd-login-handle fadeIn-1s">
                            <ul class="hd-login-list">
                                <li class="h-l-h-item"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index">进入我的账户</a></li>
                                <li class="h-l-h-item"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/index/logout">退出</a></li>
                            </ul>
                        </div>
                        <span class="hd-triangle-1 fadeIn-1s">◆</span>
                        <span class="hd-triangle fadeIn-1s">◆</span>
                    </li>
                </ul>
                <ul id="lrWrapper" class="hd-login-in clearfix">
                    <li class="hd-login-btn"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/index/login?ret_url=<{urlencode(Yii::app()->c->baseUrl)}>" target="_top">登录</a></li>
                    <li class="hd-regist-btm">
                        <a href="<{yii::app()->c->baseUrlHttps}>/newuser/union/index?s_label=indexreg&l_id=74" 
                        class="a-auto setRegLog" _reg_val="<{yii::app()->c->linkconfig['reg_log_type']['header']}>" target="_top">注册</a>
                    </li>
                </ul>
                <{else}>
                    <{if $Itz.userInfo.user_id>0}>
                    <ul id="hsWrapper" class="hd-login-win">
                        <li class="h-l-w-item clearfix">
                            <a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index"><span class="fl mgr-5">您好，<strong><{$Itz.userInfo.username|truncate:15:"…"}></strong></span><span class="fl css-triangle a-r180"></span></a>
                            <div class="hd-login-handle fadeIn-1s">
                                <ul class="hd-login-list">
                                    <li class="h-l-h-item"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/main/index">进入我的账户</a></li>
                                    <li class="h-l-h-item"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/index/logout">退出</a></li>
                                </ul>
                            </div>
                            <span class="hd-triangle-1 fadeIn-1s">◆</span>
                            <span class="hd-triangle fadeIn-1s">◆</span>
                        </li>
                    </ul>
                    <{else}>
                    <ul id="lrWrapper" class="hd-login-in clearfix">
                        <li class="hd-login-btn"><a href="<{yii::app()->c->baseUrlHttps}>/newuser/index/login?ret_url=<{urlencode($this->createUrl(Yii::app()->request->getUrl()))}>" target="_top">登录</a></li>
                        <li class="hd-regist-btm">
                            <a href="
                                <{if $this->action->id == "dataStatistics" }>
                                <{yii::app()->c->baseUrlHttps}>/newuser/union/index?s_label=stattop&l_id=77
                                <{elseif $this->getId() == "safe" && $this->action->id== "index" }>
                                <{yii::app()->c->baseUrlHttps}>/newuser/union/index?s_label=safebt2&l_id=94
                                <{elseif $this->module->id == "itzdefault" && $this->action->id== "index" }>
                                <{yii::app()->c->baseUrlHttps}>/newuser/union/index?s_label=indexreg&l_id=74
                                <{elseif $this->module->id == "newuser" && $this->action->id|in_array:array('semreg') }>
                                <{yii::app()->c->baseUrlHttps}>/newuser/union/index?s_label=lp1bt10&l_id=85
                                <{else}>
                                <{yii::app()->c->baseUrlHttps}>/newuser/index/reg
                                <{/if}>
                                " class="a-auto setRegLog" _reg_val="<{yii::app()->c->linkconfig['reg_log_type']['header']}>" target="_top">注册</a>
                        </li>
                    </ul>
                    <{/if}>
                <{/if}>
            </div>
        </div>
    </div>
	<div class="hd-nav">
    	<div class="hd-inner clearfix" style="position:relative;">
            <ul class="hd-main-nav fl clearfix">
                <li class="h-m-n-item<{if $this->module->id == 'itzdefault' && $this->getid() == 'index' && $this->action->id == 'index'}> cur<{/if}>">
                    <a href="<{Yii::app()->c->baseUrlHttp}>" class="h-m-n-link">首页</a>
                </li>
                <li class="h-m-n-item<{if $this->module->id == 'dinvest'}> cur<{/if}>">
                    <a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/index/index" class="h-m-n-link">投资产品</a>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                    <ul class="hd-sub-nav clearfix dspn fadeIn-1s">
                        <{if Yii::app()->c->lingqian_trigger}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/lingqian/index" class="h-s-n-link">零钱计划</a></li>
                        <{/if}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/shengxin/index" class="h-s-n-link">省心计划</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/list/index?type=2" class="h-s-n-link">爱担保产品</a></li>
                        <{if $Itz['system']['con_switch_abl_global']['value'] == 1}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/list/index?type=6" class="h-s-n-link">爱保理产品</a></li>
                        <{/if}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/list/index?type=5" class="h-s-n-link">爱融租产品</a></li>
                        <{if $Itz['system']['con_switch_asc_global']['value'] == 1}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/list/index?type=7" class="h-s-n-link">爱收藏产品</a></li>
                        <{/if}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/dinvest/debt/index" class="h-s-n-link">债权市场</a></li>
                    </ul>
                </li>
                <li class="h-m-n-item<{if $this->module->id == 'itzdefault' && $this->getid() == 'business'}> cur<{/if}>">
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/index" class="h-m-n-link">业务模式</a>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                    <ul class="hd-sub-nav clearfix dspn fadeIn-1s">
                        <{if Yii::app()->c->lingqian_trigger}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/lingqian" class="h-s-n-link">零钱计划</a></li>
                        <{/if}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/shengxin" class="h-s-n-link">省心计划</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/guar" class="h-s-n-link">爱担保模式</a></li>
                        <{if $Itz['system']['con_switch_abl_global']['value'] == 1}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/factoring" class="h-s-n-link">爱保理模式</a></li>
                        <{/if}>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/lease" class="h-s-n-link">爱融租模式</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/art" class="h-s-n-link">爱收藏模式</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/debt" class="h-s-n-link">债权转让模式</a></li>
                    </ul>
                </li>
                <li class="h-m-n-item<{if ($this->module->id == 'itzdefault' && $this->getid() == 'safe') || $this->module->id == 'guarantee'}> cur<{/if}>">
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/index" class="h-m-n-link">安全保障</a>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                    <ul class="hd-sub-nav clearfix dspn fadeIn-1s">
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/guarantee/guar/index" class="h-s-n-link">合作保障机构</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/cfca" class="h-s-n-link">CFCA战略合作</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/credit" class="h-s-n-link">信审风控流程</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/law" class="h-s-n-link">政策法规保障</a></li>
                    </ul>
                </li>
                <li class="h-m-n-item<{if $this->module->id == 'itzdefault' && $this->getid() == 'about'}> cur<{/if}>">
                    <a href="<{$this->createUrl('/itzdefault/about/corp')}>" class="h-m-n-link">关于我们</a>
                    <span class="hd-triangle fadeIn-1s">◆</span>
                    <ul class="hd-sub-nav clearfix dspn fadeIn-1s">
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/corp" class="h-s-n-link">公司简介</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/team" class="h-s-n-link">团队介绍</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/corp?type=glory" class="h-s-n-link">企业荣誉</a></li>
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/media" class="h-s-n-link">媒体报道</a></li> 
                        <li class="h-s-n-item"><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/contact" class="h-s-n-link">联系我们</a></li>
                    </ul>
                </li>
                <li class="h-m-n-item" id="loveForum">
                    <a href="http://bbs.itouzi.com" class="h-m-n-link">爱亲论坛</a>
                </li>
            </ul>
            <{if $this->module->id == "itzdefault" &&  $this->getId() == "index" && $this->action->id == "index"}>
            <a id="indexActivity1" style="display:none" href="<{yii::app()->c->baseUrlHttps}>/newuser/index/reg" class="animated hdIcoRight fr"></a>
            <a id="indexActivity2" style="display:none" href="<{yii::app()->c->baseUrlHttps}>/newuser/main/invite" class="animated hdIcoRight fr"></a>

            <{else}>
                <{if $Itz.userInfo.user_id>0}>
                <a id="indexActivity2" href="<{yii::app()->c->baseUrlHttps}>/newuser/main/invite" class="animated hdIcoRight fr"></a>
                <{else}>
                 <a id="indexActivity1" href="<{yii::app()->c->baseUrlHttps}>/newuser/index/reg" class="animated hdIcoRight fr"></a>
                <{/if}>            
            <{/if}>
        </div>
    </div>
</div>
