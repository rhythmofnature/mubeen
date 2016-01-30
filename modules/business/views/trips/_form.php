<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\modules\business\models\MaterialTypes;
use app\modules\business\models\DriverDetails;
use app\modules\business\models\VehicleDetails;
use app\modules\business\models\CustomerDetails;
use kartik\widgets\DepDrop;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model app\modules\business\models\Trips */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="trips-form">

    <?php $form = ActiveForm::begin(); ?>
    
    <?= $form->field($model, 'date_of_travel')->widget(yii\jui\DatePicker::className(),
		[
		    'clientOptions' =>[
			    'dateFormat' => 'dd-mm-yyyy',
			    'changeMonth'=> true,
			    'changeYear'=> true,
			    'autoSize'=>true,
			    'yearRange'=>'1900:'.(date('Y')+1)],
		    'options'=>[
			    'class'=>'form-control',
			    'placeholder' => $model->getAttributeLabel('date_of_travel'),'style'=>'width:500px'
		      ],]) ?>

	<?= $form->field($model, 'merchant')
      ->dropDownList(
	  ArrayHelper::map(CustomerDetails::find()->where(['status'=>1,'customer_type'=>1])->all(), 'id', 'name'),
	  ['prompt'=>'Select Merchant','style'=>'width:500px','onChange'=>'merchantAmount();']
      );?>
      
      <?= $form->field($model, 'buyer')
      ->dropDownList(
	  ArrayHelper::map(CustomerDetails::find()->where(['status'=>1,'customer_type'=>2])->all(), 'id', 'name'),
	  ['prompt'=>'Select Buyer','style'=>'width:500px','onChange'=>'buyerAmount();']
      );?>
      
      
    <?= $form->field($model, 'vehicle_id')
      ->dropDownList(
	  ArrayHelper::map(VehicleDetails::find()->where(['status'=>1])->all(), 'id', 'name'),
	  ['prompt'=>'Select Vehicle','style'=>'width:500px','id'=>'vehicle-id','onChange'=>'calculateKMA();']
      );?>
      
     <?php echo $form->field($model, 'driver_id')->widget(DepDrop::classname(), 
	[
	    'options'=>['id'=>'driver_id','style'=>'width:500px'],
	    'data'=> ArrayHelper::map(DriverDetails::find()->where(['status'=>1,'customer_type'=>3])->all(), 'id', 'name'),
	    'pluginOptions'=>[
		'depends'=>['vehicle-id'],
		'placeholder'=>'Select driver',
		'url'=>Url::to(['/business/driver/driverlist'])
	    ]
	]);
?>
      
    
      
     <?= $form->field($model, 'material_id')
      ->dropDownList(
	  ArrayHelper::map(MaterialTypes::find()->where(['status'=>1])->all(), 'id', function($model, $defaultValue) {
			return $model->name.' - '.MaterialTypes::$measurementType[$model->measurement_type];
		    }
	),
	  ['prompt'=>'Select Material','style'=>'width:500px','onChange'=>'merchantAmount();buyerAmount();']
      );?>

    <?= $form->field($model, 'size')->textInput(['maxlength' => 100,'style'=>'width:500px','onChange'=>'merchantAmount();buyerAmount();']) ?>


    <?= $form->field($model, 'site_name')->textInput(['maxlength' => 250,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'site_place')->textInput(['maxlength' => 250,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'kilometre')->textInput(['maxlength' => 100,'style'=>'width:500px','onChange'=>'calculateKMA();']) ?>

    <?= $form->field($model, 'vehicle_rent')->textInput(['style'=>'width:500px']) ?>

    <?= $form->field($model, 'driver_amount')->textInput(['maxlength' => 7,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'merchant_amount')->textInput(['maxlength' => 7,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'buyer_amount')->textInput(['maxlength' => 7,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'buyer_amount_total')->textInput(['maxlength' => 7,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'buyer_trip_sheet_number')->textInput(['maxlength' => 20,'style'=>'width:500px']) ?>

    <?= $form->field($model, 'seller_trip_sheet_number')->textInput(['maxlength' => 20,'style'=>'width:500px']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<script>
function merchantAmount(){	

  var material= $("#trips-material_id").val();
  var quantity = $("#trips-size").val();
  var merchant = $("#trips-merchant").val();
  if(material !="" && quantity !="" && merchant !=""){
  console.log(material);
  console.log(quantity);
   $.ajax({
    type     :'POST',
    cache    : false,
    data: {material: material, 'quantity': quantity,'customer':merchant},
    url  : '<?php echo \Yii::$app->getUrlManager()->createUrl('business/customer/gettripprice') ?>',
    success  : function(response) {
		$("#trips-merchant_amount").val(response);
       console.log(response);
    }
    });
  }

}
function buyerAmount(){	

  var material= $("#trips-material_id").val();
  var quantity = $("#trips-size").val();
  var merchant = $("#trips-buyer").val();
  if(material !="" && quantity !="" && merchant !=""){
  console.log(material);
  console.log(quantity);
   $.ajax({
    type     :'POST',
    cache    : false,
    data: {material: material, 'quantity': quantity,'customer':merchant},
    url  : '<?php echo \Yii::$app->getUrlManager()->createUrl('business/customer/gettripprice') ?>',
    success  : function(response) {
		$("#trips-buyer_amount").val(response);
		totalBuyersAmt();
       console.log(response);
    }
    });
  }

}

function calculateKMA(){

  var vehicle = $("#vehicle-id").val();
  var km = $("#trips-kilometre").val();
  if(vehicle !="" && km !=""){
  console.log(vehicle);
  console.log(km);
   $.ajax({
    type     :'POST',
    cache    : false,
    data: {vehicle: vehicle, 'km': km},
    url  : '<?php echo \Yii::$app->getUrlManager()->createUrl('business/vehicle/getkmpprice') ?>',
    success  : function(response) {
		$("#trips-vehicle_rent").val(response);
        driverRent(response);
    }
    });
  }
  
}

function driverRent(toatlRent){



var driverId= $("#driver_id").val();
if(toatlRent !="" && driverId !=""){

   $.ajax({
    type     :'POST',
    cache    : false,
    data: {driverId: driverId, 'toatlRent': toatlRent},
    url  : '<?php echo \Yii::$app->getUrlManager()->createUrl('business/driver/gettripbata') ?>',
    success  : function(response) {
		$("#trips-driver_amount").val(response);
		totalBuyersAmt();
       
    }
    });
  }
}


function totalBuyersAmt(){
var material_price =$("#trips-buyer_amount").val();
var vehicle_rent =$("#trips-vehicle_rent").val();
if(material_price !="" && vehicle_rent !=""){
  var gTotal= parseFloat(material_price)+parseFloat(vehicle_rent);
  $("#trips-buyer_amount_total").val(gTotal);
}

}

</script>

