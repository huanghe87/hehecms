<?php

namespace task\models;

use Yii;

/**
 * This is the model class for table "menu".
 *
 * @property integer $id Menu id(autoincrement)
 * @property string $name Menu name
 * @property integer $parent Menu parent
 * @property string $route Route for this menu
 * @property integer $order Menu order
 * @property string $icon Extra information for this menu
 *
 * @property Menu $menuParent Menu parent
 * @property Menu[] $menus Menu children
 *
 * @author Misbahul D Munir <misbahuldmunir@gmail.com>
 * @since 1.0
 */
class Trigger extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%trigger}}';
    }

    /**
     * @inheritdoc
     */
    public static function getDb()
    {
        return Yii::$app->getDb();
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'unique_key', 'task'], 'required'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => '名称',
            'unique_key' => '唯一key',
            'task' => '任务配置json',
            'create_time' => '创建时间',
            'update_time' => '更新时间',
            'admin_id' => '账户ID',
        ];
    }

    public function beforeValidate(){
        if($this->getIsNewRecord()) {
            $this->create_time = time();
        }
        $this->update_time = time();
        $this->admin_id = Yii::$app->user->id;
        return true;
    }

}