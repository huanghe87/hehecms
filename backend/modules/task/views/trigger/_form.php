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

	<?= $form->field($model, 'unique_key')->textInput(['id' => 'unique_key', 'maxlength' => 50, 'class'=>'layui-input']) ?>

    <?= $form->field($model, 'task')->textarea(['id' => 'task', 'rows' => '6']) ?>

    <?= $form->field($model, 'sort')->input('number',['class'=>'layui-input']) ?>

    <div align='right' style="margin-top:15px;">
        <?=
        Html::submitButton($model->isNewRecord ? '创建' : '更新', ['class' => $model->isNewRecord? 'layui-btn' : 'layui-btn layui-btn-normal'])
        ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
