<?php    
session_start();
 if (!isset($_SESSION['id'])) exit; 
 include("Notification.php"); 
 $notificationObj = new Notification();
 $id = $_SESSION['id'];  
 $action = $_REQUEST['action'];  
 switch($action) {  
   case "seen":  
     if (isset($_REQUEST['notifications'])) { 
     echo $_REQUEST['notifications'];
     print_r(json_decode($_REQUEST['notifications']));
       $notifications = json_decode($_REQUEST['notifications']);  
       foreach ($notifications as $notification) {  
         if (is_numeric($notification)) $notificationObj->Seen($notification);  
       }  
     }  
     break;  
   case "delete":  
     $notification = $_REQUEST['notification'];  
     if (is_numeric($notification)) $notificationObj->deleteNotification($notification);  
     break;  
 }  
 ?>  