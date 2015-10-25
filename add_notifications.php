<!DOCTYPE html>
<html>
<head>
	<title>Send Notifications</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		function addNotifications () {
			$.ajax({
				url: 'ajax/add_notifications.php',
				type: 'post',
				data: {
					to_user_id: 1,
					from_user_id: 2,
					mail_id: 2
				}
			}).done(function(response){

			});
		}
		addNotifications();  
	 	var intervalId = setInterval(addNotifications, 10000);
	</script>
</body>
</html>