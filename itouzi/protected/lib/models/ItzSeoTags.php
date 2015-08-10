<?php

/**
 * This is the model class for table "itz_seo_tags".
 *
 * The followings are the available columns in table 'itz_seo_tags':
 * @property integer $id
 * @property integer $aid
 * @property string $tag
 * @property integer $addtime
 * @property integer $modtime
 */
class ItzSeoTags extends DwActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return ItzSeoTags the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'itz_seo_tags';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('aid, addtime, modtime', 'numerical', 'integerOnly'=>true),
			array('tag', 'length', 'max'=>50),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, aid, tag, addtime, modtime', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'aid' => 'Aid',
			'tag' => 'Tag',
			'addtime' => 'Addtime',
			'modtime' => 'Modtime',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('aid',$this->aid);
		$criteria->compare('tag',$this->tag,true);
		$criteria->compare('addtime',$this->addtime);
		$criteria->compare('modtime',$this->modtime);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}