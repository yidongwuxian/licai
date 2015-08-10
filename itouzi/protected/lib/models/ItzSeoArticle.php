<?php

/**
 * This is the model class for table "itz_seo_article".
 *
 * The followings are the available columns in table 'itz_seo_article':
 * @property integer $id
 * @property integer $f_id
 * @property integer $s_id
 * @property integer $status
 * @property string $title
 * @property string $abstract
 * @property string $thumbnail
 * @property string $keyword
 * @property string $content
 * @property integer $addtime
 * @property integer $modtime
 */
class ItzSeoArticle extends DwActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return ItzSeoArticle the static model class
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
		return 'itz_seo_article';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('content', 'required'),
			array('f_id, s_id, status, addtime, modtime', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>30),
			array('abstract', 'length', 'max'=>250),
			array('thumbnail', 'length', 'max'=>200),
			array('keyword', 'length', 'max'=>120),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, f_id, s_id, status, title, abstract, thumbnail, keyword, content, addtime, modtime', 'safe', 'on'=>'search'),
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
			'f_id' => 'F',
			's_id' => 'S',
			'status' => 'Status',
			'title' => 'Title',
			'abstract' => 'Abstract',
			'thumbnail' => 'Thumbnail',
			'keyword' => 'Keyword',
			'content' => 'Content',
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
		$criteria->compare('f_id',$this->f_id);
		$criteria->compare('s_id',$this->s_id);
		$criteria->compare('status',$this->status);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('abstract',$this->abstract,true);
		$criteria->compare('thumbnail',$this->thumbnail,true);
		$criteria->compare('keyword',$this->keyword,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('addtime',$this->addtime);
		$criteria->compare('modtime',$this->modtime);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}