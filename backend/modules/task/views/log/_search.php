<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var yii\web\View $this
 * @var rbac\models\searchs\Menu $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="menu-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => ['class' => 'form-inline layui-form'],
		'fieldConfig' => [
		   'template' => '<div class="layui-inline">{label}：<div class="layui-input-inline">{input}</div></div><span class="help-block" style="display: inline-block;">{hint}</span>',
	   ],
    ]); ?>

    <?= $form->field($model, 'req_id')->textInput(['class'=>'layui-input search_input']) ?>

    <?= $form->field($model, 'job_key')->textInput(['class'=>'layui-input search_input']) ?>

    <?= $form->field($model, 'appname')->textInput(['class'=>'layui-input search_input']) ?>

    <div class="form-group">
        <?= Html::submitButton('查找', ['class' => 'layui-btn layui-btn-normal']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
