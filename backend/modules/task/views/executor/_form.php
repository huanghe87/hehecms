<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model rbac\models\Menu */
/* @var $form yii\widgets\ActiveForm */
use backend\assets\LayuiAsset;
LayuiAsset::register($this);

?>

<div class="menu-form create_box">
    <?php $form = ActiveForm::begin(); ?>
	
	<?= $form->field($model, 'name')->textInput(['maxlength' => 20, 'class'=>'layui-input']) ?>

	<?= $form->field($model, 'unique_key')->textInput(['id' => 'unique_key', 'maxlength' => 20, 'class'=>'layui-input']) ?>
	
	<?= $form->field($model, 'sort')->input('number',['class'=>'layui-input']) ?>

    <?= $form->field($model, 'type')->radioList(['1'=>'自动注册 ', '2'=>'手动注册']) ?>

    <?= $form->field($model, 'ips')->textInput(['id' => 'ips', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'topic')->textInput(['id' => 'topic', 'class'=>'layui-input']) ?>

    <div align='right' style="margin-top:15px;">
        <?=
        Html::submitButton($model->isNewRecord ? '创建' : '更新', ['class' => $model->isNewRecord? 'layui-btn' : 'layui-btn layui-btn-normal'])
        ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
