<?php
function isHttps(){
    return (isset($_SERVER['HTTP_HTTPS']) && $_SERVER['HTTP_HTTPS'] == "https") || (isset($_SERVER['HTTPS']) && !strcasecmp($_SERVER['HTTPS'],'on'));
}

return array (
    //模板目录
    'viewPath' => APP_DIR . "/views/",
    //protected根目录
    'basePath' => APP_DIR . '/protected/',
    //应用名
    'name' => 'itouzi',
    //运行时目录，主要用于模板的编译
    'runtimePath' => 'G:/tmp/runtime/',

    'import' => array (
        'application.lib.models.*',   //orm model
        'application.lib.services.*', //service layer
        'application.lib.classes.*',  //other lib class
        'application.lib.util.*',     //other lib class
        'itzlib.classes.*',     //itzlib class
        'itzlib.api.*',     //itzlib class

        'application.lib.extensions.RESTFullYii.components.*',
    ),

    //模块配置，各部分的默认值为：module=default,controller=index,action=index
    'modules' => array (
        'default',  //这是默认加载的模块
        'gii'=>array(
            'class'=>'system.gii.GiiModule',
            'password'=>'1',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters'=>array('*'),
        ),
        'user','json','xml','guar','corp','itzdefault',"dinvest","newuser","weixin",'guarantee',"api","weixin","union",'wap','licai','lottery','activity'
    ),
    //组件配置
    'components' => array (
        'user'=>array(
            'class'=>'WebUser',
            'identityCookie'=>array('domain' => '.itouzi.com','path' => '/'),
            //'loginUrl'=>array('/guar/default/login'),
            'allowAutoLogin'=>true,
            'authTimeout'=>1800, //session有效时间
            'loginRequiredAjaxResponse'=>'{"status":1, "msg":"User not login!"}',
        ),
        //模板渲染组件，这里统一采用smarty引擎
        'viewRenderer' => array (
            //支持smarty引擎的插件
            'class' => 'ItzSmartyView',
            //模板后缀名
            'fileExtension' => '.tpl',
             //这里可用来配置全局变量，例如下面的配置，我们在模板种可以直接用<{CONST.cssRoot}>来读取
            'globalVal' => array (
                'viewPath'   => APP_DIR.'/views/',
                'cssPath'    => "", //yiistatic是两套框架并存下的解决方案
                //'cssPath'    => isHttps() ? 'https://itzstatic.b0.upaiyun.com' : 'http://css.itzcdn.com', //通过https协议判断是用又拍云还是网宿
                //'cssPath'    => isHttps() ? (strpos($_SERVER['REQUEST_URI'],'newuser/main/account') ? 'https://itouzi.8686c.com' : 'https://itzstatic.b0.upaiyun.com') ： 'http://itzcdn.itouzi.com', //测试网宿https
                'jsPath'     => '',
                //'jsPath'     => isHttps() ? 'https://itzstatic.b0.upaiyun.com' : 'http://js.itzcdn.com', //通过https协议判断是用又拍云还是网宿
                'cdnPath'    => "https://itzstatic.b0.upaiyun.com",
                //'cdnPath'    => "http://itzcdn.itouzi.com",//网宿，暂时没怎么用，只有企业荣誉用了。不过cssPath增加判断是否https是最简单的方法
                'ypyPath'    => (isHttps() ? "http":"https")."://itzstatic.b0.upaiyun.com", //必须用又拍云的地址 上传
                'jsVersion'  => time(),
                'cssVersion' => time(),
                'developMode'=> false,//是否开发模式
            ),
            //这里为Smarty支持的属性
            'config' => array (
                'left_delimiter' => "<{",
                'right_delimiter' => "}>",
                'template_dir' => APP_DIR . "/views/",
                'debugging' => false,
            )
        ),
        //URLRewrite组件，根据需要进行配置
        'urlManager' => array (
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules' => array (
                'gii'=>'gii/default/index',
                'gii/<controller:\w+>'=>'gii/<controller>',
                'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>',

                'api/<controller:\w+>/<action:\w+>'=>array('/api/<controller>/<action>'),
                'api/<controller:\w+>'=>array('/api/<controller>/restList'),
                'api/<controller:\w+>'=>array('/api/<controller>/restList'),
                'api/<controller:\w+>/<id:\w*>'=>array('/api/<controller>/restView'),
                'api/<controller:\w+>/<id:\w*>/<var:\w*>'=>array('/api/<controller>/restView'),
                'api/<controller:\w+>/<id:\w*>/<var:\w*>/<var2:\w*>'=>array('/api/<controller>/restView'),

                array('<controller>/restUpdate', 'pattern'=>'api/<controller:\w+>/<id:\w*>', 'verb'=>'PUT'),
                array('<controller>/restUpdate', 'pattern'=>'api/<controller:\w+>/<id:\w*>/<var:\w*>', 'verb'=>'PUT'),
                array('<controller>/restUpdate', 'pattern'=>'api/<controller:\w*>/<id:\w*>/<var:\w*>/<var2:\w*>', 'verb'=>'PUT'),

                array('<controller>/restDelete', 'pattern'=>'api/<controller:\w+>/<id:\w*>', 'verb'=>'DELETE'),
                array('<controller>/restDelete', 'pattern'=>'api/<controller:\w+>/<id:\w*>/<var:\w*>', 'verb'=>'DELETE'),
                array('<controller>/restDelete', 'pattern'=>'api/<controller:\w+>/<id:\w*>/<var:\w*>/<var2:\w*>', 'verb'=>'DELETE'),

                array('<controller>/restCreate', 'pattern'=>'api/<controller:\w+>', 'verb'=>'POST'),
                array('<controller>/restCreate', 'pattern'=>'api/<controller:\w+>/<id:\w+>', 'verb'=>'POST'),

                //ICP证公示页
                'icp' => 'itzdefault/about/icp',

                //公司年报
                'report(-<year:\d+>)?' => 'itzdefault/event/report',

                //seo
                'licai' => '/licai/index/index',//首页
                'licai/page/<page:\d+>' => 'licai/index/index',//首页分页链接
                'licai/<pageFlag:\w+>/<article_id:\d+>.html' => 'licai/index/detail',//详情页
                'licai/<pageFlag:zhishi|guihua|chanpin|wenda>' => 'licai/index/list',//写死4个列表页，他们喝下面的tag规则是有冲突的，所以要放在前面
                'licai/<pageFlag:zhishi|guihua|chanpin|wenda>/page/<page:\d+>' => 'licai/index/list',//列表页分页链接
                'licai/<spell:\w+>' => 'licai/index/tags',//tag列表页
                'licai/<spell:\w+>/page/<page:\d+>' => 'licai/index/tags',//tags分页链接
                
                //landingpage
                'newuser/index/semreg-<itz_aid:\w+>' => 'newuser/index/semreg',
                'semreg(-<itz_aid:\w+>)?' => 'newuser/index/semreg',
                'wap/index/landingpagereg(-<itz_aid:\w+>)?' => 'wap/index/landingpagereg',
                'wapsemreg(-<itz_aid:\w+>)?' => 'wap/index/landingpagereg',

                //landingpage各活动
                'newuser/index/semreg360(-<itz_aid:\w+>)?' => 'newuser/index/semreg360',
                'semreg360(-<itz_aid:\w+>)?' => 'newuser/index/semreg360',
                
                //首页
                '' => 'default/index/index',
                'invest/<id:\w+>' => 'dinvest/invest/detail',
                'invest/index.html' => 'dinvest/invest/index',
                'user' => 'user/account/index',
                'guar' => 'guar/default/login',
                'corp' => 'corp/default/login',
                'union'=> 'union/index/wel',
                '<action:\w+>/index.html'=> '/default/static/<action>',
                '<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => 'default/<controller>/<action>',
                '<action:\w+>' => 'default/index/<action>',
                
                //合作金融机构
                'guarantee/guar/detail-<id:\d+>.html' => 'guarantee/guar/detail',

            ),
           'baseUrl' => (isHttps() ? "https":"http").'://old.itouzi.com'
        ),
        'errorHandler'=>array(
            'errorAction'=>'itzdefault/common/error',
        ),
        'bootstrap'=>array(
            'class'=>'bootstrap.components.Bootstrap',
        ),
        //正常的log组件
        'log' => array (
            'class' => 'CLogRouter',
            'routes' => array (
                array (
                    'class' => 'CFileLogRoute',
                    'levels' => 'info,trace,debug',
                    //支持日期格式,{}中的为日期格式
                    'logPath' => 'G:/home/work/logs/',
                    'logFile' => 'yii_itouzi_access.log',
                    'maxFileSize' => 2097152
                ),
                array (
                    'class' => 'CFileLogRoute',
                    'levels' => 'error,warning',
                    //支持日期格式,{}中的为日期格式
                    'logPath' => 'G:/home/work/logs/',
                    'logFile' => 'yii_itouzi_error.log',
                    'maxFileSize' => 2097152
                ),/*
                array(
                    'class'=>'CWebLogRoute',
                    'levels'=>'trace',
                    'categories'=>'system.db.*',
                ),*/
            )
        ),
        'c' =>array(
            'class' => 'ItzConfig',
            'baseUrl' => (isHttps() ? "https":"http").'://old.itouzi.com',
            'baseUrlHttp' => 'http://old.itouzi.com',
            'baseUrlHttps' => 'http://old.itouzi.com',
            'coupon_start_amount' => 10000,//投资券使用起额
            'contractSavePath' => '/home/work/itouzi.com/contract',
            "linkconfig" => require_once(WWW_DIR . '/itzlib/config/linkconfig.php'),
            'ymcpscookiename'  => 'itouzi_ym_cps',
            'naked_sql' => require_once(WWW_DIR . '/itzlib/config/sqls.php'),
            'config' => require_once dirname ( __FILE__ ) . "/config.php",
            'couponconfig' => require_once(WWW_DIR . '/itzlib/config/couponconfig.php'),
            'weixin' => array(
                    'apiUrl' => 'http://www.tuisong8.com/weixin/default/index',//微信接口api的url,暂时没用到
                    'token' => 'itouzi_wx',//微信token，暂时没用到，页面里面define了
                    'appId' => 'wx9ecbb23c678097d7',//微信appid
                    'appSecret' => '2ef992d14fda11108b90638201c3778f',//微信app secret
                    //'appId' => 'wx00a8361234d28f7f',//测试微信appid
                    //'appSecret' => 'd0360be42940afb481647399189eb9dc',//测试微信app secret
                    'urlController' => 'http://www.tuisong8.com/weixin/default/urlController',//微信网页授权后回调url
                    'magicToWap' => 'e532f34861712bc2f2fc1200834ac3de',//和wap站的一个约定参数magic
                    'loginUrl' => 'http://www.itouzi.com/newuser/index/login',//登录验证页，访问wap站，每次要登录并通过这个地址转发目标url
            ),
            'app_uri' => array(
                'android' => 'http://a.app.qq.com/o/simple.jsp?pkgname=com.antourong.itouzi',
                'androidpc' => 'http://itzstatic.b0.upaiyun.com/downloads/iTouzi.apk',
                'ios' => 'http://a.app.qq.com/o/simple.jsp?pkgname=com.antourong.itouzi',
                'iospc' => 'http://itunes.apple.com/cn/app/ai-tou-zi-rang-nin-ai-shang/id892274943?ls=1&mt=8',
            ),
            'oauth' => array(
                'oauth_type' => array(
                    'wb'=>array('wb',1),
                    'qq'=>array('qq',2),
                    'wx'=>array('wx',3),
                )
            ),
            'mobile' => array(
                'staticUrl' => 'http://old.itouzi.com/yiistatic/static/old/mobile',
                'domain' => 'http://m.itouzi.com',
            ),
            'hashCode' => 'c6bca293057f0d3dde8bb4dbb15b2866',  //User_hash用的密钥
            'ypyPath'    => "http://itzstatic.b0.upaiyun.com",  //又拍云上传地址
            'AppDesKey' => 'fyV0p1l4',   //app 密码用的密钥
            'lingqian_trigger' => 1      //零钱计划开关
        ),
        "useCache" => array(
            'class' => 'ItzConfig',
            "flag"  => 0,
        ),

        //数据库组件
        'db'=> require_once dirname ( __FILE__ ) . "/db.php" ,
        'marketdb'=> require_once dirname ( __FILE__ ) . "/marketdb.php" ,
        'dcache'=> require_once dirname ( __FILE__ ) . '/dcache.php' ,
        //APP重复投资单开缓存过滤
        'ocache'=>array(
           'class'=>'CMemCache',
           'servers'=>array(
                array(
                    'host'=>'192.168.23.8',
                    'port'=>11212,
                    'timeout'=> 1,
                ),
           ),
        ),
        /*'session' => array (
            'cookieParams' => array('domain' => '.itouzi.com', 'lifetime' =>1800 ),
            'class' => "CCacheHttpSession",
            'sessionName' => "ITZ_SESSIONID",
            'cookieMode'=>'only',
        ),*/
    ),
    //预先加载log组建
    'preload' => array (
        'log',
        'user',
    )
);
