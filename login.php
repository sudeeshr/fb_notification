<?php
session_start();
if(!$_SESSION['id']){
	$_SESSION['id'] = 1;
}
header('Location: index.php');