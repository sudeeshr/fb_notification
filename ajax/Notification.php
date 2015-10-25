<?php  
class Notification {  
   var $type;  
   var $to_user;  
   var $from_user;  
   var $reference;  
   var $timestamp;  
   var $newcount;  
   private $conn;

   public function __construct(){
      $DBServer = 'localhost'; // e.g 'localhost' or '192.168.1.100'
      $DBUser   = 'root';
      $DBPass   = 'root';
      $DBName   = 'notification_system';

      $this->conn = new mysqli($DBServer, $DBUser, $DBPass, $DBName);
       
      // check connection
      if ($this->conn->connect_error) {
        trigger_error('Database connection failed: '  . $this->conn->connect_error, E_USER_ERROR);
      }
   }

   public function getAllNotifications() {  
     $this->newcount = $this->newCount($this->to_user);  
     $sql = "SELECT n.*,u.defaultpic,u.username, u.displayName FROM notification n INNER JOIN user u ON u.user_id = n.to_user ORDER BY `timestamp` DESC LIMIT 10";  
     $result = $this->conn->query($sql);  
     echo $this->conn->error;  
     if ($result) {  
       return $result;  
     }  
     return false; //none found  
   }  
   public function Add() {  
     $sql = "INSERT INTO notification (to_user,from_user,reference,type) VALUES ({$this->to_user},{$this->from_user},{$this->reference},'{$this->type}')";  
     $this->conn->query($sql);  
     echo $this->conn->error;  
   }  
   public function Seen($id) {  
     if (!isset($_SESSION['id'])) exit;  
     $sql = "UPDATE notification SET seen = 1 WHERE id = {$id} AND to_user = {$_SESSION['id']}";  
     $this->conn->query($sql);  
   }  
   public function newCount($user) {  
     $sqlcnt = "SELECT count(*) FROM notification WHERE to_user = {$user} AND seen = 0";  
     $result = $this->conn->query($sqlcnt);  
     $row = $result->fetch_row();  
     return $row[0];  
   }  
   public function deleteNotification($id) {  
     if (!isset($_SESSION['id'])) exit;  
     $sql = "DELETE FROM notification WHERE id = {$id} AND to_user = {$_SESSION['id']}";  
     $this->conn->query($sql);  
   }  
 }  
 ?>
