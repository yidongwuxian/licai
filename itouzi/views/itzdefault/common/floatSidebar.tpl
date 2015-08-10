<ul class="float-toolbars clearfix">
    <{if !($this->module->id == "itzdefault" && $this->getId() == "event" && $this->action->id == "worldcup")}>
    <li class="float-toolbars-item rel">
        <a href="http://bbs.itouzi.com/forum-9-1.html" target="_blank" class="user-feedback-10 float-toolbars-title">意见<br/>反馈</a>
        <div class="float-toolbars-item-sub"><a target="_blank" href="<{$this->createUrl('/newuser/event/questionnaire')}>" class="user-feedback-0 float-toolbars-title-1">调查<br/>问卷</a><a target="_blank" href="http://qiao.baidu.com/v3/?module=default&controller=webim&action=index&siteid=2486763&groupid=0&groupname=%E6%8A%95%E8%B5%84%E5%92%A8%E8%AF%A2" class="user-feedback-2 float-toolbars-title-1">在线<br/>客服</a>
        <!--<a href="###" class="user-feedback-1 float-toolbars-title-1"><br/></a></div>-->
    </li>
    <li class="float-toolbars-item rel">
        <a href="<{$this->createUrl('/itzdefault/help/index?idx=100')}>" class="user-feedback-9 float-toolbars-title" style="line-height:36px;">工具箱</a>
        <div class="float-toolbars-item-sub"><a target="_blank" href="<{$this->createUrl('/itzdefault/common/check')}>" class="user-feedback-6 float-toolbars-title-1">页面检<br/>测工具</a><a href="<{$this->createUrl('/itzdefault/help/bank')}>" class="user-feedback-7 float-toolbars-title-1">存款<br/>利率表</a><a href="<{$this->createUrl('/dinvest/tools/index')}>" class="user-feedback-8 float-toolbars-title-1">收益<br/>计算器</a></div>
    </li>
    <{/if}>
    <li class="float-toolbars-item user-feedback-5" id="fav" >
        <a class="float-toolbars-title">收藏<br/>本站</a>
    </li>
    <li class="float-toolbars-item user-feedback-3" id="toolbars_goback">
        <a class="float-toolbars-title">返回<br/>顶部</a>
    </li>
</ul>



<{*}>
<!--老样式及逻辑，暂时不用了。意见反馈弹出框样式-->
<div class="user-feedback-con">
    <div class="user-feedback-edit">
        <h2>意见反馈</h2>
        <textarea placeholder="告诉我们您遇到的问题"></textarea>
        <a href="###" class="btn-global-4">确认提交</a>
    </div>
    <div class="user-feedback-succeed" style="display:none;">
        <p>
            <strong>感谢您的宝贵意见！</strong><br/>
            爱投资一定尽快解决您使用中遇到的问题<br/>
            <a href="#">继续写反馈</a>
        </p>
    </div>
</div>
<!--其它老样式及逻辑-->
<li class="float-toolbars-item user-feedback-2">
    <a target="_blank" href="http://qiao.baidu.com/v3/?module=default&amp;controller=webim&amp;action=index&amp;siteid=2486763&amp;groupid=0&amp;groupname=%E6%8A%95%E8%B5%84%E5%92%A8%E8%AF%A2" class="float-toolbars-title">在线<br/>客服</a>
</li>
<{if $this->module->id == "newuser"}>
    <li class="float-toolbars-item user-feedback-4">
        <a href="<{$this->createUrl('/newuser/main/updateLog')}>" class="float-toolbars-title">升级<br/>日志</a>
    </li>
<{/if}>
<{/*}>