 var unseen_id_array = new Array();  
 function CheckUpdates()  
 {  
   jQuery.ajax({url:"ajax/notifications.php", dataType:"html", success: function(msg) {  
       if (msg != "") {  
         var result = msg.split("|");  
         var unseen = parseInt(result[0]);  
         var notifications = result[1];  
         var unseen_ids = JSON.parse(result[2]);
         if (unseen > 0) {  
           $('#notification-badge').css("display", "inline");  
           $('#notification-badge').html(unseen);  
           for (i = 0; i < unseen_ids.length; i++) {  
             unseen_id_array.push(Number(unseen_ids[i]));  
           }
           console.log(unseen_ids);
         }  
         jQuery('#notifications').html(notifications);  
       } else {jQuery('#notifications').html("No notifications...");}  
     }  
   })  
 }  
 function DeleteNotification(id) {  
   jQuery.ajax({url:"ajax/update_notifications.php", data:"notification="+id+"&action=delete", dataType:"html", success: function(msg) {  
       $("#notification_"+id).hide();  
     }  
   });  
 }  
 function SeenNotification() {  
   jQuery.ajax({url:"ajax/update_notifications.php", type: 'post', data:"notifications="+JSON.stringify(unseen_id_array)+"&action=seen", dataType:"html", success: function(msg) {  
       setTimeout(function() {  
         $('#notification-badge').css("display", "none");  
         $('#notification-badge').html("");  
       },1000);  
     }  
   });  
 }  
 $(document).ready(function() {  
   $('.notifications').click(function() {  
     //TODO: stop CheckUpdates interval and restart menu closes  
     SeenNotification();  
   });  
   $('.dropdown-menu').click(function(event){  
      event.stopPropagation();  
   });  
 })  
 CheckUpdates();  
 var intervalId = setInterval(CheckUpdates,10000);