<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\modules\business\models\CustomerDetails;

/* @var $this yii\web\View */
/* @var $model app\modules\business\models\CustomerDetails */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="col-xs-12 col-lg-12">
  <div class="<?php echo $model->isNewRecord ? 'box-success' : 'box-info'; ?> box view-item col-xs-12 col-lg-12">
   <div class="vehicle-details-form">
    <?php $form = ActiveForm::begin(); ?>
    
    <div class="col-xs-12 col-lg-12 no-padding">
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'name')->textInput(['maxlength' => 250]) ?>
    </div>
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'place')->textInput(['maxlength' => 250]) ?>
    </div>
   </div>   
   
    <div class="col-xs-12 col-lg-12 no-padding">
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'address')->textarea(['rows' => 6]) ?>
    </div>
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'account_details')->textarea(['rows' => 6]) ?>
    </div>
   </div>  
   
    <div class="col-xs-12 col-lg-12 no-padding">
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'customer_type')
        ->dropDownList(
             CustomerDetails::$customerType,
            ['prompt'=>'Select status','style'=>'width:300px']
        );?>
    </div>
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'phone')->textInput(['maxlength' => 15]) ?>
    </div>
   </div>  
   
    <div class="col-xs-12 col-lg-12 no-padding">
    <div class="col-xs-12 col-sm-6 col-lg-6">
    <?= $form->field($model, 'status')
        ->dropDownList(
             CustomerDetails::$status,
            ['prompt'=>'Select status','style'=>'width:300px']
        );?>
    </div>
    <div class="col-xs-12 col-sm-6 col-lg-6">
    
    </div>
   </div>     
    

    <?php ActiveForm::end(); ?>
</div>
</div>
</div>


