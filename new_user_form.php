<html>
<head>
<style>
        body{
                background-image:url("https://cdn.pixabay.com/photo/2012/10/25/23/18/train-62849_1280.jpg");
                font-color:black;
        }
</style>
</head>
<body style="
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >

<?php 

require "db.php";

$pwd=$_POST["password"];
$eid=$_POST["emailid"];
$mno=$_POST["mobileno"];
$dob=$_POST["dob"];

$sql = "INSERT INTO user (password,emailid,mobileno,dob) VALUES ('".$pwd."','".$eid."','".$mno."','".$dob."')";
// echo $sql;

if ($conn->query($sql) === TRUE) 
{
 echo "Hi $eid, <a href=\"http://13.48.127.133/railway/index.htm\"> Click here </a> to browse through our website!!! " ;
} 
else 
{
 echo "Error:" . $conn->error. "<br> <a href=\"http://13.48.127.133/railway/new_user_form.htm\">Go Back to Login!!!</a> ";
}

$conn->close(); 
?>

</body>
</html>
