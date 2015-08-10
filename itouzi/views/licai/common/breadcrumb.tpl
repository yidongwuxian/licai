<div class="crumb-nav bd-inner">
    <{foreach from=$ItzView.breadmenu item=url key=key name=index }>
    <{if $url ==""}>
    <span><{$key}></span>
    <{else}>
        <a href="<{$url}>"><{$key}></a>
    <{/if}>
    <{if !$smarty.foreach.index.last}>&nbsp;&nbsp;>&nbsp;&nbsp;<{/if}>
    <{/foreach}>
</div>
<!--记得考虑爱融租、以及投资详情页等页面的显示-->