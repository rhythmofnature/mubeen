<?php

namespace app\modules\business\models;

use Yii;

/**
 * This is the model class for table "bur_trips".
 *
 * @property integer $id
 * @property string $date_of_travel
 * @property integer $vehicle_id
 * @property integer $driver_id
 * @property integer $material_id
 * @property string $size
 * @property integer $measurement_type
 * @property string $site_name
 * @property string $site_place
 * @property string $kilometre
 * @property double $vehicle_rent
 * @property string $driver_amount
 * @property string $merchant_amount
 * @property string $buyer_amount
 * @property string $buyer_amount_total
 * @property string $buyer_trip_sheet_number
 * @property string $seller_trip_sheet_number
 */
class Trips extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
     public $trip_count;
    public static function tableName()
    {
        return 'bur_trips';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date_of_travel','merchant','buyer', 'vehicle_id', 'driver_id', 'material_id', 'size', 'measurement_type', 
'kilometre', 'vehicle_rent', 'driver_amount', 'merchant_amount',  'buyer_amount_total','ready_merchant','ready_buyer','trip_count'], 'required'],
            [['date_of_travel','ready_merchant','ready_buyer'], 'safe'],
            [['vehicle_id', 'driver_id', 'material_id', 'measurement_type'], 'integer'],
            [['vehicle_rent', 'driver_amount', 'merchant_amount', 'buyer_amount', 'buyer_amount_total'], 'number'],
            [['size', 'kilometre'], 'string', 'max' => 100],
            [['site_name', 'site_place'], 'string', 'max' => 250],
            [['buyer_trip_sheet_number', 'seller_trip_sheet_number'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'merchant'=>'Merchant',
            'buyer'=>'Customer',
            'date_of_travel' => 'Date Of Travel',
            'vehicle_id' => 'Vehicle',
            'driver_id' => 'Driver',
            'material_id' => 'Material',
            'size' => 'Measurement',
            'measurement_type' => 'Measurement Type',
            'site_name' => 'Site Name',
            'site_place' => 'Site Place',
            'kilometre' => 'Kilometre',
            'vehicle_rent' => 'Vehicle Rent',
            'driver_amount' => 'Driver Amount',
            'merchant_amount' => 'Merchant Amount',
            'buyer_amount' => 'Customer Amount',
            'buyer_amount_total' => 'Customer Amount Total',
            'buyer_trip_sheet_number' => 'Customer Trip Sheet Number',
            'seller_trip_sheet_number' => 'Merchant Trip Sheet Number',
            'ready_merchant' =>'Ready cash to merchant',
            'ready_buyer' =>'Ready cash from customer'
        ];
    }

	public function afterSave($insert,$changedAttributes)
	{
		
		$merchant_id= $this->merchant;
		$trip_id = $this->id;
		$merchant_amt=$this->merchant_amount;
		$created = $this->date_of_travel;
		$ready_merchant = $this->ready_merchant;
		
		/*  ******Saving merchant details *******/
		$merchant_obj = BalanceSheet::findOne(['customer_id'=>$merchant_id,'trip_id'=>$trip_id]);
		if(!isset($merchant_obj->id)){
			$merchant_obj = new BalanceSheet();
		}
		
		
		$merchant_obj->customer_id =$merchant_id;
		$merchant_obj->trip_id =$trip_id;
		$merchant_obj->amount =$merchant_amt;
		if($ready_merchant=="yes"){
                    $merchant_obj->status ='closed';
		}else{
                    $merchant_obj->status ='open';
		}
		
		$merchant_obj->to_or_from ='to';
		$merchant_obj->created_on =$created;
		$merchant_obj->save();
		
		if($ready_merchant=="yes"){
                    $lastTransaction=Transactions::find()->where(['customer_id'=>$merchant_id])->orderBy(['id'=>SORT_DESC])->one();
                    
                    $trans_obj = new Transactions();
                    $trans_obj->customer_id =$merchant_id;
                    $trans_obj->ivoice_amount =$merchant_amt;
                    $trans_obj->previous_balance=0;
                    $trans_obj->paid_amount =$merchant_amt;
                    $trans_obj->paid_date=$created;
                    $trans_obj->balance=0;
                    $trans_obj->sheet_ids=$merchant_obj->id;
                    $trans_obj->created_on=date("Y-m-d");
                    $trans_obj->status='closed';
                    $trans_obj->save();
                    
                    if(isset($lastTransaction->id)){
//                         print_r($lastTransaction->attributes);exit;
                        $trans_obj_new = new Transactions();
                        $trans_obj_new->attributes =$lastTransaction->attributes;
                        $trans_obj_new->id='';
//                         print_r($trans_obj_new->attributes);exit;
                        $trans_obj_new->save();
//                         print_r($trans_obj_new->getErrors());
                        $lastTransaction->delete();
                    }
                    
		}
		

		/*  ******Saving buyers details *******/
		$buyer_id=$this->buyer;
		$buyer_amt=$this->buyer_amount_total;
		$ready_buyer = $this->ready_buyer;
		$buyer_obj = BalanceSheet::findOne(['customer_id'=>$buyer_id,'trip_id'=>$trip_id]);
		if(!isset($buyer_obj->id)){
			$buyer_obj = new BalanceSheet();
		}
		$buyer_obj->customer_id =$buyer_id;
		$buyer_obj->trip_id =$trip_id;
		$buyer_obj->amount =$buyer_amt;
		if($ready_buyer=="yes"){
                    $buyer_obj->status ='closed';
		}else{
                    $buyer_obj->status ='open';
		}
		
		
		$buyer_obj->to_or_from ='from';
		$buyer_obj->created_on =$created;
		$buyer_obj->save();
		
		
		if($ready_buyer=="yes"){
                    $lastTransaction=Transactions::find()->where(['customer_id'=>$buyer_id])->orderBy(['id'=>SORT_DESC])->one();
                    
                    $trans_obj = new Transactions();
                    $trans_obj->customer_id =$buyer_id;
                    $trans_obj->ivoice_amount =$buyer_amt;
                    $trans_obj->previous_balance=0;
                    $trans_obj->paid_amount =$buyer_amt;
                    $trans_obj->paid_date=$created;
                    $trans_obj->balance=0;
                    $trans_obj->sheet_ids=$buyer_obj->id;
                    $trans_obj->created_on=date("Y-m-d");
                    $trans_obj->status='closed';
                    $trans_obj->save();
                    
                    if(isset($lastTransaction->id)){
                        $trans_obj_new = new Transactions();
                        $trans_obj_new->attributes =$lastTransaction->attributes ;
                        $trans_obj_new->id='';
                        $trans_obj_new->save();
                        $lastTransaction->delete();
                    }
                    
		}
		


		/*  ******Saving driver details *******/
		$driver_id=$this->driver_id;
		$driver_amt=$this->driver_amount;
		$driver_obj = BalanceSheet::findOne(['customer_id'=>$driver_id,'trip_id'=>$trip_id]);
		if(!isset($driver_obj->id)){
			$driver_obj = new BalanceSheet();
		}
		$driver_obj->customer_id =$driver_id;
		$driver_obj->trip_id =$trip_id;
		$driver_obj->amount =$driver_amt;
		$driver_obj->status ='open';
		$driver_obj->to_or_from ='to';
		$driver_obj->created_on =$created;
		$driver_obj->save();
		
		

		
		
	} 

	public function getVehicles()
	{
	    return $this->hasOne(VehicleDetails::className(), ['id' => 'vehicle_id']);
	}

	public function getDriver()
	{
	    return $this->hasOne(DriverDetails::className(), ['id' => 'driver_id']);
	}

	public function getMaterial()
	{
	    return $this->hasOne(MaterialTypes::className(), ['id' => 'material_id']);
	}

	public function getMerchants()
	{
	    return $this->hasOne(CustomerDetails::className(), ['id' => 'merchant']);
	}

	public function getBuyers()
	{
	    return $this->hasOne(CustomerDetails::className(), ['id' => 'buyer']);
	}


}
