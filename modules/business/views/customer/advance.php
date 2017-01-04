<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\modules\business\models\CustomerDetails;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\business\models\CustomerDetailsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Advances';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="col-xs-12">
  <div class="col-lg-4 col-sm-4 col-xs-12 no-padding"><h3 class="box-title"><i class="fa fa-th-list"></i> <?= $this->title ?></h3></div>
  <div class="col-xs-4"></div>

</div>

<div class="col-xs-12" style="padding-top: 10px;">
   <div class="box">
      <div class="box-body table-responsive">
	<div class="batches-index">
   <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'name',
            'place',
            'address:ntext',
            'account_details:ntext',
            [
		'label' => 'Customer Type',
		'attribute' => 'customer_type',
		'filter' => CustomerDetails::$customerType,
		'value' => function ($model,$key,$index){
		return CustomerDetails::$customerType[$model->customer_type];			
		},
 	    ],
            // 'phone',
            // 'status',
	    [
		    'class' => 'yii\grid\ActionColumn',
		    'template' => '{prices}',
		    'buttons' => [
			    'prices' => function ($url,$model,$key) {
				//return Html::a('<span class="fa fa-rupee"></span>',Yii::$app->homeUrl.'/business/customer/prices/?id='.$model->id);
				return Html::a('<i class="fa fa-rupee"></i>',['/business/customer/collectadvance','id'=>$model->id]);
			    },
		    ],
	    ],
        ],
    ]); ?>
	</div>
      </div>
    </div>
</div>


