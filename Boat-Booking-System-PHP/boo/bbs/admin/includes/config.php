<?php
//time zone
date_default_timezone_set('Asia/Kolkata');
//database connection
$con=mysqli_connect("localhost","root","","bbsdb");
if(mysqli_connect_error()){
echo "Connection Fail".mysqli_connect_error();
}

  ?>