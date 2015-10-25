# fb_notification
facebook like notification using php and jquery

clone this repo in your web root dir eg: /var/www/html/, then access- http://localhost/fb_notification 
using a web browser

# mechanism
index.php uses notification.js which has a function named CheckUpdates(), this function makes ajax call to ajax/notifications.php. 

notifications.php then gets last 10 notifications ordered by timestamp and prepares html to display notifications in proper format.
