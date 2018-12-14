<?php

namespace task\models;

use Yii;

/**
 * This is the model class for collection "customer".
 *
 * @property \MongoDB\BSON\ObjectID|string $_id
 * @property mixed $id
 * @property mixed $name
 * @property mixed $province
 * @property mixed $city
 * @property mixed $town
 * @property mixed $address
 * @property mixed $lng
 * @property mixed $lat
 * @property mixed $create_time
 */
class Log extends \yii\mongodb\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function collectionName() {
        return 'combx_log';
    }

    /**
     * @inheritdoc
     */
    public function attributes() {
        return [
            '_id',
            'req_id',
            'req_body',
            'even_time',
            'appname',
            'topic',
            'job_key',
            'author',
            'email',
            'mobile',
            'mq_push_time',
            'mq_push_result',
            'mq_pop_time',
            'mq_pop_result',
            'exec_end_time',
            'exec_result',
            'exec_reply',
            'error',
            'client_ip',
            'update_time',
        ];
    }

    /**
     * @inheritdoc
     * 参考 YII2，rules规则
     */
    public function rules() {
        return [
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            '_id' => 'ID',
            'req_id' => '请求ID',
            'req_body' => '请求体',
            'even_time' => '调度开始时间',
            'appname' => '执行器KEY',
            'topic' => '队列',
            'job_key' => '任务KEY',
            'author' => '负责人',
            'email' => '邮箱',
            'mobile' => '手机',
            'mq_push_time' => '入队时间',
            'mq_push_result' => '入队结果',
            'mq_pop_time' => '出队时间',
            'mq_pop_result' => '出队结果',
            'exec_end_time' => '消费结束时间',
            'exec_result' => '消费结果',
            'exec_reply' => '消费返回',
            'error' => '错误',
            'client_ip' => '执行器ip',
            'update_time' => '更新时间',
        ];
    }

    public function getStatus($status) {
        $statusText = array(
            '-1' => '未开始',
            '0' => '失败',
            '1' => '成功',
        );
        return empty($statusText[$status])?'未知':$statusText[$status];
    }

}