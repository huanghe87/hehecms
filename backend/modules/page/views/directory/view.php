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
            'name',
            'unique_key',
            'type',
            'ips',
            'topic',
            'admin_id',
            [
                'attribute' => 'create_time',
                'value' => function($model){
                    return date("Y-m-d H:i:s",$model->create_time);
                }
            ],
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
