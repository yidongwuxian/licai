<{include file="`$CONST.viewPath`itzdefault/layouts/htmlHeader.tpl"}>
<body>
<{include file="`$CONST.viewPath`itzdefault/layouts/header.tpl"}>
<div style="width:1200px;position:relative;margin:0 auto;min-height:500px;">
    <div class="bd bd-inner">
        <{include file="`$CONST.viewPath`licai/common/breadcrumb.tpl"}>
        <{include file="`$CONST.viewPath`licai/common/seoSlider.tpl"}>
        <div class="seo-bd">
            <div class="seo-wz">
                <div class="seoKeyWords">
                    
                </div>
                <div class="seoCnt">
                    <span class="title2"><{$article[0].title}></span>
                    <div class="keyLink">
                        <{foreach from=$myseKey item=item key=key}>
                            <a href="/licai/<{$item.spell}>/"><{$item.tag}></a>
                        <{/foreach}>
                    </div>
                    <p><{$article[0].content}></p>
                </div>
                <div class="seoPages fr">
                    <{if $prevdetail}>
                    <a href="/licai/<{$pageFlag}>/<{$prevdetail.id}>.html" class="prev"><s></s>上一篇</a>
                    <{/if}>
                    <{if $prevdetail && $nextdetail}>
                    <span>|</span>
                    <{/if}>
                    <{if $nextdetail}>
                    <a href="/licai/<{$pageFlag}>/<{$nextdetail.id}>.html" class="next">下一篇<s></s></a>
                    <{/if}>
                </div>
            </div>
            <div class="seo-fe">
                <a target="_blank" href="http://www.itouzi.com/newuser/union/index?s_label=itzad&l_id=3" style="display:block;margin-left:20px"><img style="display:block;width:210px;height:144px;overflow:hidden;" src="<{$CONST.ypyPath}>/static/img/event/seo/seo_pic.jpg" /></a>
                 <a target="_blank" href="http://www.itouzi.com/newuser/union/index?s_label=itzad&l_id=3" style="display:block;margin-left:20px;margin-top:10px;"><img src="<{$CONST.ypyPath}>/static/img/event/seo/seo_pic1.jpg" style="width:210px;" /></a>
                <div class="seo-read">
                    <div class="seo-read-tt">相关阅读</div>
                    <ul>
                        <{foreach from=$seo item=item key=key}>
                        <{if $key < 10}>
                        <li>
                            <s></s>
                            <a href="/licai/<{$item.pageFlag}>/<{$item.id}>.html"><{$item.title}></a>
                        </li>
                        <{/if}>
                        <{/foreach}>
                    </ul>
                </div>
                <div class="seo-keywards" id="myKey">
                    <{foreach from=$myKeyword item=item key=key}>
                        <a href="/licai/<{$item.spell}>"><{$item.tag}></a>
                    <{/foreach}>
                </div>
            </div>
        </div>
    </div>
   
</div>  
<{include file="`$CONST.viewPath`itzdefault/layouts/footer.tpl"}>
<{include file="`$CONST.viewPath`itzdefault/common/floatSidebar.tpl"}>
<{include file="`$CONST.viewPath`itzdefault/layouts/scripts.tpl"}>

<script src="<{$CONST.cssPath}>/static/js/seo.js"></script>
<{include file="`$CONST.viewPath`itzdefault/layouts/bottomScripts.tpl"}>
</body>
</html>
