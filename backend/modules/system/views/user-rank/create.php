<?php
use backend\assets\LayuiAsset;

LayuiAsset::register($this);
$this->registerJs($this->render('js/index.js'));
?>
<div class="user-rank-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>
