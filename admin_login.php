<html>
<head>
<style>
body{
        background-image: url("https://png.pngtree.com/background/20210711/original/pngtree-creative-synthetic-atmospheric-railway-background-picture-image_1075537.jpg");


</style>
</head>

<body style=" 
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">
<div align="center">
<?php 
session_start();
if($_POST["uid"]=='admin' AND $_POST["password"]=='admin' )
{
$_SESSION["admin_login"]=True;
}

if($_SESSION["admin_login"]==True)
{
echo " <br><a href=\"http://13.48.127.133/railway/insert_into_stations.php\"> Show All Stations </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/show_trains.php\"> Show All Trains </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/show_users.php\"> Show All Users </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/insert_into_train_3.php\"> Enter New Train </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/insert_into_classseats_3.php\"> Enter Train Schedule </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/booked.php\"> View all booked tickets </a><br> ";
echo " <br><a href=\"http://13.48.127.133/railway/cancelled.php\"> View all cancelled tickets </a><br> ";
//echo " <br><a href=\"http://13.48.127.133/railway/logout.php\"> Logout </a><br> ";
}
else 
{

echo "
<form action=\"admin_login.php\" method=\"post\">
User ID: <input type=\"text\" name=\"uid\" required><br>
Password: <input type=\"password\" name=\"password\" required><br>
<input type=\"submit\">
</form>
";
}


?>
<br><a href="http://13.48.127.133/railway/index.htm">Go to Home Page!!!</a>
</div>
</body>
</html>
