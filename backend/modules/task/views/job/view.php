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
            'executor_key',
            'group',
            'handler',
            'call_type',
            'host',
            'port',
            'server_name',
            'start',
            'tel',
            'email',
            'sort',
            'account_name',
            'create_time',
            'update_time',
        ],
		'template' => '<tr><th width="100px">{label}</th><td>{value}</td></tr>', 
    ])
    ?>
</div>
