<?php

namespace task\models;

use Yii;
use yii\helpers\ArrayHelper;

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
class Executor extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%executor}}';
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
            [['name', 'unique_key'], 'required'],
            [['sort'], 'integer'],
            [['type'], 'in',
                'range' => [1, 2],
                'message' => '注册方式 "{value}" 不合法.']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'id',
            'name' => '名称',
            'unique_key' => '唯一key',
            'sort' => '排序',
            'type' => '类型',
            'ips' => '服务器地址',
            'topic' => '队列名称',
            'create_time' => '创建时间',
            'update_time' => '更新时间',
            'account_name' => '账户',
        ];
    }

    /**
     * 获取类别的下拉菜单
     * @return type
     */
    public static function dropDown(){
        $data = self::find()->asArray()->all();
        $data_list = ArrayHelper::map($data, 'unique_key', 'unique_key');
        return $data_list;
    }

}
