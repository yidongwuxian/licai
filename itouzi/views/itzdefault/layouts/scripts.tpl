<{if $CONST.developMode}>
    <script src="<{$CONST.jsPath}>/static/third/jquery-1.9.1.js"></script>
    <script src="<{$CONST.jsPath}>/static/third/jquery.lazyload/jquery.lazyload.min.js"></script>
    <script src="<{$CONST.jsPath}>/static/js/plugins/jquery.itzTip1.js?v=<{$CONST.jsVersion}>"></script>
    <script src="<{$CONST.jsPath}>/static/js/common.js"></script>
    <script src="<{$CONST.jsPath}>/static/js/event/reglog/reglog.js"></script>
    <script src="<{$CONST.jsPath}>/static/third/luhn.js"></script>
<{else}>
    <script src="<{$CONST.jsPath}>/static/js/itz.common.min.js?v=<{$CONST.jsVersion}>"></script>
<{/if}>
<{if $this->module->id=='itzdefault' && $this->getId()=='about'}>
<script src="<{$CONST.jsPath}>/static/third/gallery/blueimp/js/blueimp-gallery.js"></script>
<script src="<{$CONST.jsPath}>/static/third/gallery/blueimp/js/blueimp-gallery-indicator.js"></script>
<script src="<{$CONST.jsPath}>/static/third/gallery/blueimp/js/jquery.blueimp-gallery.js"></script>
<script src="<{$CONST.jsPath}>/static/third/slide/responsiveslides.js"></script>
<{/if}>
