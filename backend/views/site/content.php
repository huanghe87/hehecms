<?php
use yii\helpers\Url;
use backend\assets\LayuiAsset;

//LayuiAsset::addScript($this, 'plugins/echarts/echarts.min.js');
?>
		<div class="layui-body layui-form top-50">
			<div class="layui-tab marg0" lay-filter="tab" id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i class="iconfont">&#xe603;</i> <cite>后台首页</cite></li>
				</ul>
				<ul class="layui-nav closeBox">
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="iconfont icon-dianji"></i>操作</a>
				    <dl class="layui-nav-child">
					  <dd><a href="javascript:;" class="refresh refreshThis"><i class="iconfont icon-refresh"></i> 刷新当前</a></dd>
				      <dd><a href="javascript:;" class="closePageOther"><i class="iconfont icon-guanbi"></i> 关闭其他</a></dd>
				      <dd><a href="javascript:;" class="closePageAll"><i class="iconfont icon-close"></i> 关闭全部</a></dd>
				    </dl>
				  </li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show" style="text-align: center">
						<h1>欢迎使用hehecms系统</h1>
					</div>
				</div>
			</div>
		</div>
  
<?php $this->beginBlock('map') ?>  

<?php $this->endBlock() ?>  
<?php $this->registerJs($this->blocks['map'], \yii\web\View::POS_END); ?>  