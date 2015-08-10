<{include file="`$CONST.viewPath`itzdefault/layouts/htmlHeader.tpl"}>
<body>
<{include file="`$CONST.viewPath`itzdefault/layouts/header.tpl"}>
<div style="width:1200px;position:relative;margin:0 auto;min-height:500px;">
    <div class="bd bd-inner">
        <{include file="`$CONST.viewPath`licai/common/breadcrumb.tpl"}>
        <{include file="`$CONST.viewPath`licai/common/seoSlider.tpl"}>
        <div class="seo-bd">
            <div class="seo-wz" id="seoWz">
                <ul>
                    <{foreach from=$seo item=item key=key}>
                    <li>
                        <a class="seoTT" href="/licai/<{$item.pageFlag}>/<{$item.id}>.html"><{$item.title}></a>
                        <p><{$item.abstract}></p>
                    </li>
                    <{/foreach}>
                </ul>
            </div>
            <div class="seo-fe">
                <a target="_blank" href="http://www.itouzi.com/newuser/union/index?s_label=itzad&l_id=3" style="display:block;margin-left:20px"><img style="top:0;*top:34px" src="<{$CONST.ypyPath}>/static/img/event/seo/seo_pic.jpg" /></a>
                 <a target="_blank" href="http://www.itouzi.com/newuser/union/index?s_label=itzad&l_id=3" style="display:block;margin-left:20px;margin-top:10px"><img src="<{$CONST.ypyPath}>/static/img/event/seo/seo_pic1.jpg" style="width:210px;" /></a>
                <div class="seo-keywards" id="myKey">
                     <{foreach from=$myKeyword item=item key=key}>
                        <a  href="/licai/<{$item.spell}>/"><{$item.tag}></a>
                     <{/foreach}>
                </div>
            </div>
            <!--列表分页-->
            <div class="invest-product-paging">
              <div class="i-p-p-link clearfix">
                    <div class="i-p-p-l-num clearfix">
                  <{foreach item=navi from=$pageInfo.arrNavi}>
                  <{if $navi=="pre"}>
                        <a href="<{getUrl arrSet=['page'=>$pageInfo.pn-1] router=$pageRouter }>" class="pre" _dom_name="pre">&lt;上一页</a>
                    <{/if}>
                  <{/foreach}>
                        <{foreach item=navi from=$pageInfo.arrNavi}>
                        <{if $navi==$pageInfo.pn}>
                            <span class="cur"><{$navi}></span>
                        <{elseif $navi=="next"}>
                        <{elseif $navi=="pre"}>
                        <{else}>
                            <a class="flag_pg" href="<{getUrl arrSet=['page'=>$navi] router=$pageRouter}>"  _dom_name="<{$navi}>"><{$navi}></a>
                        <{/if}>
                        <{/foreach}>
                    <{foreach item=navi from=$pageInfo.arrNavi}>
                    <{if $navi=="next"}>
                        <a href="<{getUrl arrSet=['page'=>$pageInfo.pn+1] router=$pageRouter }>" class="pre" _dom_name="pre">下一页&gt;</a>
                    <{/if}>
                    <{/foreach}>
                    </div>
                </div>
            </div>
            <!-- 分页结束 -->
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
