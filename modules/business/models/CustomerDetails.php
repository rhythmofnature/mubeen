<?php

namespace app\modules\business\models;

use Yii;

/**
 * This is the model class for table "bur_customer_details".
 *
 * @property integer $id
 * @property string $name
 * @property string $place
 * @property string $address
 * @property string $account_details
 * @property integer $customer_type
 * @property string $phone
 * @property string $status
 */
class CustomerDetails extends \yii\db\ActiveRecord
{
    public static $customerType = array(        
        "1"=>"Merchant",
        "2"=>"Buyer",
        "3"=>"Driver"
    );
    public static $status = array(
        
        "1"=>"Active",
        "0"=>"In Active"
    );
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bur_customer_details';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'place', 'address', 'account_details', 'customer_type', 'phone'], 'required'],
            [['address', 'account_details'], 'string'],
            [['customer_type'], 'integer'],
            [['name', 'place'], 'string', 'max' => 250],
            [['phone'], 'string', 'max' => 15],
            [['status'], 'string', 'max' => 1]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'place' => 'Place',
            'address' => 'Address',
            'account_details' => 'Account Details',
            'customer_type' => 'Customer Type',
            'phone' => 'Phone',
            'status' => 'Status',
        ];
    }
}
