<?php
session_start();
if(!$_SESSION['id']){
	$_SESSION['id'] = 1;
}
?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Home</title>
 	<!-- Latest compiled and minified CSS -->
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
 	<style type="text/css">
 	#notifications{
	    max-height: 350px;
	    overflow: auto;
	    overflow-x: hidden;
 	}
 	a.dropdown-toggle.notifications{
 		position: relative;
 	}
 	a.dropdown-toggle.notifications i{
		font-size: 2em;
	   	color: #808080;
 	}
 	a.dropdown-toggle.notifications .badge.badge-important{
	 	position: absolute;
	    top: 7px;
	    left: 28px;
	    padding: 2px 5px;
	    background-color: #337ab7;
	}
	#notifications img{
		border-radius: 50%;
    	border: 1px solid #808080;
	}
 	</style>
 </head>
 <body>
 	<ul class="nav">  
 	   	<li class="dropdown">
 	   		<a class="dropdown-toggle notifications" data-toggle="dropdown" href="#">
 	   			<strong><i class="icon-bell"></i></strong> <span id="notification-badge" class="badge badge-important"></span>
   			</a>  <!-- Notifications -->
 	     	<ul id="notifications" class="dropdown-menu" role="menu" aria-labelledby="dLabel"></ul>  
 	   	</li>  
 	</ul>
 	
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="notifications.js"></script>
 </body>
 </html> 
