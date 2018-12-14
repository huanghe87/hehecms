<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use task\models\Executor;

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

    <?= $form->field($model, 'executor_key')->dropDownList(Executor::dropDown(), ['prompt'=>'请选择']) ?>

    <?= $form->field($model, 'group')->textInput(['id' => 'group', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'handler')->textInput(['id' => 'handler', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'params')->textInput(['id' => 'params', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'call_type')->dropDownList(['1'=>'http','2'=>'rpc','3'=>"local"], ['prompt'=>'请选择']) ?>

    <?= $form->field($model, 'host')->textInput(['id' => 'host', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'port')->textInput(['id' => 'port', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'server_name')->textInput(['id' => 'server_name', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'status')->radioList(['1'=>'启用 ', '0'=>'停用']) ?>

    <?= $form->field($model, 'tel')->textInput(['id' => 'tel', 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'email')->textInput(['id' => 'email', 'class'=>'layui-input']) ?>

    <div align='right' style="margin-top:15px;">
        <?=
        Html::submitButton($model->isNewRecord ? '创建' : '更新', ['class' => $model->isNewRecord? 'layui-btn' : 'layui-btn layui-btn-normal'])
        ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
