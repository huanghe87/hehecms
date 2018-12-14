<?php
use yii\widgets\DetailView;
use backend\assets\LayuiAsset;

LayuiAsset::register($this);
?>
<div class="menu-view">
    <?=DetailView::widget([
        'model' => $model,
		'options' => ['class' => 'layui-table'],
        'attributes' => [
            '_id',
            'req_id',
            'req_body',
            'appname',
            'topic',
            'job_key',
            [
                'attribute' => 'even_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->even_time);
                }
            ],
            [
                'attribute' => 'mq_push_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->mq_push_time);
                }
            ],
            [
                'attribute' => 'mq_push_result',
                'value' => function($model){
                    return $model->getStatus($model->mq_push_result);
                }
            ],
            [
                'attribute' => 'mq_pop_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->mq_pop_time);
                }
            ],
            [
                'attribute' => 'mq_pop_result',
                'value' => function($model){
                    return $model->getStatus($model->mq_pop_result);
                }
            ],
            [
                'attribute' => 'exec_end_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->exec_end_time);
                }
            ],
            [
                'attribute' => 'exec_result',
                'value' => function($model){
                    return $model->getStatus($model->exec_result);
                }
            ],
            'exec_reply',
            'error',
            'client_ip',
            'author',
            'email',
            'mobile',
            [
                'attribute' => 'update_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->update_time);
                }
            ],
        ],
		'template' => '<tr><th width="100px">{label}</th><td>{value}</td></tr>', 
    ])
    ?>
</div>
