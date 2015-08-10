<div id="ft" class="ft clearfix">
    <div class="ft-inner clearfix">
        <div class="help_service clearfix">
        <div class="ft-helper clearfix">
            <dl>
                <dt><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/index">业务模式</a></dt>
                <dd>
                    <{if Yii::app()->c->lingqian_trigger}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/lingqian">零钱计划</a>
                    <{/if}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/shengxin">省心计划</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/guar">爱担保模式</a>
                    <{if $Itz['system']['con_switch_abl_global']['value'] == 1}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/factoring">爱保理模式</a>
                    <{/if}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/lease">爱融租模式</a>
                    <{if $Itz['system']['con_switch_asc_global']['value'] == 1}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/art">爱收藏模式</a>
                    <{/if}>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/business/debt">债权转让模式</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/index">安全保障</a></dt>
                <dd>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/guarantee/guar/index">合作保障机构</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/credit">信审风控体系</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/cfca">CFCA战略合作</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/safe/law">政策法规保障</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/help/index?idx=0">帮助中心</a></dt>
                <dd>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/help/index?idx=2">爱投资介绍</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/help/index?idx=4">注册与登录</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/help/index?idx=5">认证与安全</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/help/index?idx=7">充值与提现</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/corp">关于我们</a></dt>
                <dd>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/sitemap/sitemap">网站地图</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/sitemap/links">友情链接</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/joinus">加入我们</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/itzdefault/about/contact">联系我们</a>
                    <a href="<{Yii::app()->c->baseUrlHttp}>/licai/">理财知识</a>
                </dd>
            </dl>
        </div>
        <div class="ft-service">
            <dl>
                <dt><span class="icon-hdSprite icon-ft-tishi"></span><a href="http://qiao.baidu.com/v3/?module=default&controller=webim&action=index&siteid=2486763&groupid=0&groupname=%E6%8A%95%E8%B5%84%E5%92%A8%E8%AF%A2" class="fl" target="_blank">在线客服</a></dt>
                <dd>
                    <p>
                        <strong>400-0088-100</strong><br/>
                        工作日9:00-21:00 / 节假日9:00-18:00
                    </p>
                    <div class="ft-serv-handle clearfix">
                        <div title="微信" class="icon-hdSprite icon-ft-weixin a-move a-moveHover">
                            <div class="QRcodePop clearfix" id="QRcode">
                                <div class="h-q-c-right icon-hd-erweima"></div>
                                <span class="css-triangle"></span>
                            </div>
                        </div>
                        <a href="http://e.weibo.com/itouzicom" target="_blank" title="新浪微博" class="icon-hdSprite icon-ft-sina a-move a-moveHover"></a>
                        <a href="http://t.qq.com/itouzicom" target="_blank" title="腾讯微博"class="icon-hdSprite icon-ft-qqweibo a-move a-moveHover"></a>
                        <!-- <div title="QQ群" class="icon-ft-qun a-move a-moveHover">
                            <div class="QRcodePop QRcodePop1 clearfix" id="QRcode1">
                                <div class="h-q-c-right icon-hd-qun">
                                    <p>爱投资QQ交流群</p>
                                    <p>Q群：<span>242368590</span></p>
                                </div>
                                <span class="css-triangle"></span>
                            </div>
                        </div> -->
                        <a href="http://bbs.itouzi.com/" target="_blank" title="爱投资论坛"  class="icon-ft-qun a-move a-moveHover"></a>
                        <a href="mailto:service@itouzi.com" target="_blank" title="email" class="icon-hdSprite icon-ft-email a-move a-moveHover mrn"></a>
                    </div>
                </dd>
            </dl>
        </div>
        </div>
        <div class="ft-wap clearfix">
            <!-- <span class="icon-hdSprite icon-ft-phone"></span> -->
            <ul class='mobile-client'>
                <li class='mobile-client-iphone'><a target='_blank' href='<{Yii::app()->c->app_uri['iospc']}>'>iPhone</a></li>
                <li class='mobile-client-android'><a href='<{Yii::app()->c->app_uri['androidpc']}>'><span class='normal'>Android</span><span class='hover'>点击下载</span></a></li>
                <li class='mobile-client-wap'><a target='_blank' href='http://www.itouzi.com/itzdefault/wap/index?force_m=1'>点击访问手机版</a></li>
            </ul>
            <dl>
                <dt>扫描下载客户端</dt>
                <dd>
                    <span class="icon-hdSprite icon-ft-erweima"></span>
                </dd>
            </dl>
        </div>
    </div>
    <div class="ft-record">
        <div class="ft-approve clearfix" style="width:642px;">
            <a href="https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&dn=www.itouzi.com&lang=zh_cn" target="_blank" class="icon-approve approve-1 fadeIn-2s"></a>
            <a href="http://webscan.360.cn/index/checkwebsite?url=www.itouzi.com" target="_blank" class="icon-approve approve-2 fadeIn-2s"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.itouzi.com&sn=2013070210510789828&type=gj" target="_blank" class="icon-approve approve-3 fadeIn-2s"></a>
            <!-- <a href="https://ss.knet.cn/verifyseal.dll?sn=e1304231101004028271lc000000&ct=df&a=1&pa=265541" target="_blank" class="icon-approve approve-5 fadeIn-2s"></a> -->
            <a href="/itzdefault/about/icann" class="icon-approve approve-4 fadeIn-2s"></a>
            <a href="http://www.cfca.com.cn" target="_blank" class="icon-approve approve-6 fadeIn-2s"></a>
            <a href="http://www.anquan.org/authenticate/cert/?site=www.itouzi.com&at=business" target="_blank" class="icon-approve approve-7 fadeIn-2s mrn"></a>
        </div>
        <div class="ft-identity"><strong class="ffA">© </strong>2015 爱投资 All rights reserved&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;安投融(北京)网络科技有限公司&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;<a href="<{Yii::app()->c->baseUrlHttp}>/icp" target="_blank">京ICP证150033号</a></div>
    </div>
</div>
