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
class Job extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%job}}';
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
            [['name', 'executor_key', 'unique_key', 'group', 'handler', 'call_type', 'host', 'port', 'server_name', 'tel', 'email', 'status', 'params'], 'required'],
            [['call_type'], 'in',
                'range' => [1, 2, 3],
                'message' => '调用方式 "{value}" 不合法.']
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
            'executor_key' => '执行器key',
            'unique_key' => '任务key',
            'group' => '属主',
            'handler' => '方法',
            'params' => '参数',
            'call_type' => '调用方式',
            'host' => '主机',
            'port' => '端口',
            'server_name' => '服务名称',
            'status' => '状态',
            'create_time' => '创建时间',
            'update_time' => '更新时间',
            'admin_id' => '账户ID',
            'tel' => '手机号',
            'email' => '邮箱',
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