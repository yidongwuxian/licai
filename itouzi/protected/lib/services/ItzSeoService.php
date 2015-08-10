<?php 
class ItzSeoService extends ItzInstanceService{
    public function __construct() {
        parent::__construct();
    }
    
    //获取最热标签
    public function getHotestTags() {
        $criteria = new CDbCriteria;
        $attributes = array();
        $criteria->select = 'id, aid, tag, spell, addtime, count(1) as modtime';
        $order = 'modtime desc';
        $criteria->group = 'tag';
        //$criteria->having = '';
        $result = BaseCrudService::getInstance()->get('ItzSeoTags', '', 0, '20', $order, $attributes, $criteria);  
        return $result;
    }
    
}
?>
