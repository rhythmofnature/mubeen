<?php
use yii\helpers\Html;
?>
<li class="treeview active">
	<?= Html::a('<i class="fa fa-user"></i> <span>Cofig</span> <i class="fa fa-angle-left pull-right"></i>', ['/student/default/index'])  ?>
        <ul class="treeview-menu">
             <li>
		<?= Html::a('<i class="fa fa-angle-double-right"></i> Vehicle Details',['/business/vehicle'])  ?>
		<?= Html::a('<i class="fa fa-angle-double-right"></i> Driver Details',['/business/driver'])  ?>
		<?= Html::a('<i class="fa fa-angle-double-right"></i> Material Details',['/business/material'])  ?>
		<?= Html::a('<i class="fa fa-angle-double-right"></i> Customer Details',['/business/customer'])  ?>
		<?= Html::a('<i class="fa fa-angle-double-right"></i> Daily Trips',['/business/trips'])  ?>
	    </li>
	
        </ul>
</li>
