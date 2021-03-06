<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\assets\LayuiAsset;
use yii\helpers\Url;

LayuiAsset::register($this); 
$this->registerJs($this->render('@webroot/resources/js/list.js'), \yii\web\View::POS_END);

?>

<blockquote class="layui-elem-quote" style="font-size: 14px;">
	<?php  echo $this->render('_search', ['model' => $searchModel]); ?>
</blockquote>

<div class="layui-form menu-index">
    <?php Pjax::begin(); ?>
    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
		'options' => ['class' => 'grid-view','style'=>'overflow:auto', 'id' => 'grid'],
		'tableOptions'=> ['class'=>'layui-table'],
		'pager' => [
			'options'=>['class'=>'layuipage pull-right'],
				'prevPageLabel' => '上一页',
				'nextPageLabel' => '下一页',
				'firstPageLabel'=>'首页',
				'lastPageLabel'=>'尾页',
				'maxButtonCount'=>5,
        ],
        'columns' => [
            'req_id',
            'job_key',
			'appname',
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
			[
				'attribute' => 'update_time',
				'value' => function($model){
					return date("Y-m-d H:i:s",$model->update_time);
				}
			],
            [
				'header' => '操作',
				'class' => 'yii\grid\ActionColumn',
				'contentOptions' => ['class'=>'text-center'],
				'headerOptions' => [
					'width' => '10%',
					'style'=> 'text-align: center;'
				],
				'template' =>'{view}',
				'buttons' => [
                    'view' => function ($url, $model, $key){
						return Html::a('查看', Url::to(['view','id'=>strval($model->_id)]), ['class' => "layui-btn layui-btn-xs layui-default-view"]);
                    },
				]
			],
        ],
    ]);
    ?>
<?php Pjax::end(); ?>
</div>

<script type="text/javascript">
var title = '日志';
</script>