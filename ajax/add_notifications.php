<?php
include("Notification.php");
$notification = new Notification();  
$notification->to_user = $_POST['to_user_id'];  
$notification->from_user = $_POST['from_user_id'];  
$notification->type = "mail";  //$_POST['to_user_id']
$notification->reference = $_POST['mail_id'];  
$notification->Add();