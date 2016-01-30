<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\business\models\Trips */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Trips', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="trips-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'date_of_travel',
            'vehicle_id',
            'driver_id',
            'material_id',
            'size',
            'measurement_type',
            'site_name',
            'site_place',
            'kilometre',
            'vehicle_rent',
            'driver_amount',
            'merchant_amount',
            'buyer_amount',
            'buyer_amount_total',
            'buyer_trip_sheet_number',
            'seller_trip_sheet_number',
        ],
    ]) ?>

</div>
