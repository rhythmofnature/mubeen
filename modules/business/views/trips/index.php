<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\business\models\TripsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Trips';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="trips-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Trips', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'date_of_travel',
            'vehicle_id',
            'driver_id',
            'material_id',
            // 'size',
            // 'measurement_type',
            // 'site_name',
            // 'site_place',
            // 'kilometre',
            // 'vehicle_rent',
            // 'driver_amount',
            // 'merchant_amount',
            // 'buyer_amount',
            // 'buyer_amount_total',
            // 'buyer_trip_sheet_number',
            // 'seller_trip_sheet_number',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
