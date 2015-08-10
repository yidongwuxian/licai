<?php
class IndexController extends ItzController {
    //public $layout = "main";

    //301跳转，没有用nginx跳转
    protected function redirect301(){
        switch ($_SERVER['REQUEST_URI']) {
            case '/licai':
                $url = '/licai/';
                break;
            case '/licai/zhishi':
                $url = '/licai/zhishi/';
                break;
            case '/licai/guihua':
                $url = '/licai/guihua/';
                break;
            case '/licai/chanpin':
                $url = '/licai/chanpin/';
                break;
            case '/licai/wenda':
                $url = '/licai/wenda/';
                break;
            default:
                if( $_GET['spell'] && substr($_SERVER['REQUEST_URI'], -1, 1) != '/' ){
                    $url = $_SERVER['REQUEST_URI'] . '/';
                }
                break;
        }
        if(isset($url)){
            header('HTTP/1.1 301 Moved Permanently');
            header('Location:'. $url);
        }
    }

    function actionIndex( $page = 1 ) {
        $this->redirect301();
        $limit = 10;
        //title
        $this->cTitle = '爱投资投资理财页面包罗各种投资理财知识';
        $this->cKeywords = '投资理财知识,投资理财,爱投资投资理财';
        $this->cDescription = '爱投资投资理财页面包罗各类投资理财知识，分享理财心得，解答理财疑惑，分享投资理财知识，让你的钱飞一会。';
        //面包屑
        $this->breadmenu = array(
            "首页" => $this->createUrl("/"),
            "投资理财"  => "/licai/",
            //"投资理财"  => "/licai/index/index",
        );

        $this->cTitle = '爱投资投资理财页面包罗各种投资理财知识';
        $this->cKeywords ='投资理财知识,投资理财,爱投资投资理财';
        $this->cDescription = '爱投资投资理财页面包罗各类投资理财知识，分享理财心得，解答理财疑惑，分享投资理财知识，让你的钱飞一会。';

        $condition = " t.status = 1 AND ( t.effective_time is null OR t.effective_time <= unix_timestamp(now()))  ORDER BY t.addtime DESC";
        //#@chenjunhao-add page info
        $tn = BaseCrudService::getInstance()->count("ItzSeoArticle",$condition,0,"ALL","",array());
        
        //分页pageInfo
        if($page) $this->setPn($page);
        $this->setTn($tn);
        $this->setRn($limit);

        //#@chenjunhao-end
        if ( $page == 1 ) {
            $offset = 0;
        } else {
            $offset = ($page-1)*$limit;
        }
        //查询条件
        $condition = $condition." limit ".$limit;
        //文章列表
        $result["seo"] = BaseCrudService::getInstance()->get("ItzSeoArticle",$condition,$offset,"ALL","",array());

        foreach ($result["seo"] as $key => $value) {
            switch ($value['s_id']) {
                case '1':
                    $result["seo"][$key]["pageFlag"] = 'zhishi';
                    break;
                case '2':
                    $result["seo"][$key]["pageFlag"] = 'guihua';
                    break;
                case '3':
                    $result["seo"][$key]["pageFlag"] = 'chanpin';
                    break;
                case '4':
                    $result["seo"][$key]["pageFlag"] = 'wenda';
                    break;
                default:
                    break;
            }
        }
        
        //标签云
        //$result["myKeyword"] = BaseCrudService::getInstance()->get("ItzSeoTags", "",0,"ALL","",array());
        $result["myKeyword"] = ItzSeoService::getHotestTags();
        $result['pageRouter'] = "/licai";

        $this->render('index', $result);
    }
     
    function actionList( $page = 1, $pageFlag = '' ) {
        $this->redirect301();

        $limit = 10;

        $condition = " t.status=1 AND ( t.effective_time is null OR t.effective_time <= unix_timestamp(now()))  ORDER BY t.addtime DESC";

        if ( $pageFlag == 'zhishi' ) {
            $breadmenuTitle = '理财小知识';
            $condition = " t.s_id = 1 AND".$condition;
            $result['pageRouter'] = "/licai/zhishi/";
            $breadmenuLink = $this->createUrl("/licai/zhishi/");
            $this->cTitle = '爱投资理财小知识页面包罗各种理财小知识';
            $this->cKeywords = '理财小知识';
            $this->cDescription = '爱投资理财小知识页面包罗各种理财小知识，从零开始了解理财，分享各种理财知识，学会理财，你不理财，财不理你。';
        } elseif ( $pageFlag == 'guihua' ) {
            $breadmenuTitle = '个人理财规划';
            $condition = " t.s_id = 2 AND".$condition;
            $result['pageRouter'] = "/licai/guihua/";
            $breadmenuLink = $this->createUrl("/licai/guihua/");
            $this->cTitle = '爱投资个人理财规划频道教你学会个人理财规划';
            $this->cKeywords = '个人理财规划';
            $this->cDescription = '爱投资个人理财规划频道教你如何进行个人理财规划，规划个人收入，学会如何建立自己独有的理财规划。';
        } elseif ( $pageFlag == 'chanpin' ) {
            $breadmenuTitle = '理财产品';
            $condition = " t.s_id = 3 AND".$condition;
            $result['pageRouter'] = "/licai/chanpin/";
            $breadmenuLink = $this->createUrl("/licai/chanpin/");
            $this->cTitle = '爱投资理财产品频道';
            $this->cKeywords = '理财产品';
            $this->cDescription = '爱投资理财产品频道分享多种多样的理财产品，让你可以了解各种理财产品的区别。';
        } elseif ( $pageFlag == 'wenda') {
            $breadmenuTitle = '理财问答';
            $condition = " t.s_id = 4 AND".$condition;
            $result['pageRouter'] = "/licai/wenda/";
            $breadmenuLink = $this->createUrl("/licai/wenda/");
            $this->cTitle = '爱投资理财问答频道';
            $this->cKeywords = '理财问答';
            $this->cDescription = '爱投资理财问答频道分享各种常见理财问题，帮你在理财路上答疑解惑。';
        }

         $this->breadmenu = array(
            "首页" => $this->createUrl("/"),
            "投资理财"  => "/licai/",
            //"投资理财"  => "/licai/index/index",
            $breadmenuTitle  => $breadmenuLink,
        );
        //所有文章的数据
        //#@chenjunhao-add page info
        $tn = BaseCrudService::getInstance()->count("ItzSeoArticle",$condition,0,"ALL","",array());

        //分页pageInfo
        if($page) $this->setPn($page);
        $this->setTn($tn);
        $this->setRn($limit);

        //#@chenjunhao-end
        if ( $page == 1 ) {
            $offset = 0;
        } else {
            $offset = ($page-1)*$limit;
        }
        $condition = $condition." limit ".$limit;
        $result["seo"] = BaseCrudService::getInstance()->get("ItzSeoArticle",$condition,$offset,"ALL","",array());
        $result["pageFlag"] = $pageFlag;
        //$result["myKeyword"] = BaseCrudService::getInstance()->get("ItzSeoTags", "",0,"ALL","",array());
        $result["myKeyword"] = ItzSeoService::getHotestTags();
        $this->render('list',$result);
    }

    function actionDetail( $article_id, $pageFlag ) {
        if ( $pageFlag == 'zhishi' ) {
            $breadmenuTitle = '理财小知识';
            $s_id = 1;
        } elseif ( $pageFlag == 'guihua' ) {
            $breadmenuTitle = '个人理财规划';
            $s_id = 2;
        } elseif ( $pageFlag == 'chanpin' ) {
            $breadmenuTitle = '理财产品';
            $s_id = 3;
        } elseif ( $pageFlag == 'wenda' ) {
            $breadmenuTitle = '理财问答';
            $s_id = 4;
        }
        $breadmenuLink = $this->createUrl("/licai/".$pageFlag);
        $this->breadmenu = array(
            "首页" => $this->createUrl("/"),
            "投资理财"  => "/licai/",
            //"投资理财"  => $this->createUrl("/licai/index/index"),
            $breadmenuTitle  => $breadmenuLink . '/',
        );
 
        $result['article'] = BaseCrudService::getInstance()->get("ItzSeoArticle"," t.id =".$article_id,0,"ALL","",array());
        //相关阅读
        $result["seo"] = BaseCrudService::getInstance()->get("ItzSeoArticle"," t.s_id=".$s_id." and t.status=1", 0, 10, "", array());
       
        foreach ($result["seo"] as $key => $value) {
            switch ($value['s_id']) {
                case '1':
                    $result["seo"][$key]["pageFlag"] = 'zhishi';
                    break;
                case '2':
                    $result["seo"][$key]["pageFlag"] = 'guihua';
                    break;
                case '3':
                    $result["seo"][$key]["pageFlag"] = 'chanpin';
                    break;
                case '4':
                    $result["seo"][$key]["pageFlag"] = 'wenda';
                    break;
                default:
                    break;
            }
            $this->cDescription = $result['seo'][$key]['abstract'];
        }

        $result['myseKey'] = BaseCrudService::getInstance()->get("ItzSeoTags"," aid=".$article_id, 0, "ALL", "", array());;

        $result["myKeyword"] = ItzSeoService::getHotestTags();
        $result['articleDetail'] = $result['article'][0];

        foreach($result["myseKey"] as $ff){
            $cKey[] = $ff["tag"];
            
        }

        $cDes = mb_substr($result['articleDetail']['content'], 0,200,'utf-8');
        $this->cTitle = $result['articleDetail']['title'];
        $this->cKeywords = implode(",", $cKey);

        //上一篇、下一篇
        $result['prevdetail'] = BaseCrudService::getInstance()->get("ItzSeoArticle"," t.id <".$article_id . " and t.s_id=".$s_id, 0, 1, "", array())[0];
        $result['nextdetail'] = BaseCrudService::getInstance()->get("ItzSeoArticle"," t.id >".$article_id . " and t.s_id=".$s_id, 0, 1, "", array())[0];
        $result['pageFlag'] = $pageFlag;

        $this->render('detail', $result);
    }

    function actionTags( $spell, $page = 1 ) {
        $this->redirect301();

        $limit = 10;
        $condition = " t.status = 1 AND ( t.effective_time is null OR t.effective_time <= unix_timestamp(now()))  ORDER BY t.addtime DESC";

        $myTag = BaseCrudService::getInstance()->get("ItzSeoTags", " t.spell='".$spell."'",0,"ALL","",array());

        //面包屑
        $this->breadmenu = array(
            "首页" => $this->createUrl("/"),
            "投资理财"  => "/licai/",
            //"投资理财"  => $this->createUrl("/licai/index/index"),
            $myTag[0][tag]  => "/licai/".$spell.'/',
        );

        foreach($myTag as $a){
            $ar_idArr[] = $a['aid'];
        }
        $condition = " t.id in (".implode(",", $ar_idArr).") AND".$condition;
        $tn = BaseCrudService::getInstance()->count("ItzSeoArticle",$condition,0,"ALL","",array());

        if($page) $this->setPn($page);
        $this->setTn($tn);
        $this->setRn($limit);

        if ( $page == 1 ) {
            $offset = 0;
        } else {
            $offset = ($page-1)*$limit;
        }
        $condition = $condition." limit ".$limit;

        $this->cTitle = '【'.$myTag[0][tag].'频道|'.$myTag[0][tag].'列表】—爱投资';
        $this->cKeywords = $myTag[0][tag];
        $this->cDescription = $myTag[0][tag].'频道为你提供大量的'.$myTag[0][tag].'信息，在这里你可以免费查看各种各样'.$myTag[0][tag].'相关知识。';

        $result['pageRouter'] = "/licai/".$spell;
        
        $result['seo'] = BaseCrudService::getInstance()->get("ItzSeoArticle",$condition,$offset,"ALL","",array());
        foreach ($result["seo"] as $key => $value) {
            switch ($value['s_id']) {
                case '1':
                    $result["seo"][$key]["pageFlag"] = 'zhishi';
                    break;
                case '2':
                    $result["seo"][$key]["pageFlag"] = 'guihua';
                    break;
                case '3':
                    $result["seo"][$key]["pageFlag"] = 'chanpin';
                    break;
                case '4':
                    $result["seo"][$key]["pageFlag"] = 'wenda';
                    break;
                default:
                    break;
            }
        }
        //$result['pageRouter'] = "/licai";
        //$result["myKeyword"] = BaseCrudService::getInstance()->get("ItzSeoTags", "", 0, 20, "", array());
        $result["myKeyword"] = ItzSeoService::getHotestTags();
        $this->render('list',$result);
    }
}
