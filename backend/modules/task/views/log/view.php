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
        ],
		'template' => '<tr><th width="100px">{label}</th><td>{value}</td></tr>', 
    ])
    ?>
</div>
