<html>
<head>
<style>
        body{
                background-color:#FDF5E6;
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

session_start();

require "db.php";

$doj=$_POST["doj"];
$_SESSION["doj"] = "$doj";
$sp=$_POST["sp"];
$_SESSION["sp"] = "$sp";
$dp=$_POST["dp"];
$_SESSION["dp"] = "$dp";

$query = mysqli_query($conn,"SELECT t.trainno,t.tname,c.sp,s1.departure_time,c.dp,s2.arrival_time,t.dd,c.class,c.fare,c.seatsleft FROM train as t,classseats as c, schedule as s1,schedule as s2 where s1.trainno=t.trainno AND s2.trainno=t.trainno AND s1.sname='".$sp."' AND s2.sname='".$dp."' AND t.trainno=c.trainno AND c.sp='".$sp."' AND c.dp='".$dp."' AND c.doj='".$doj."' ");

echo "<table><thead><td>Train No</td><td>Train_Name</td><td>Starting_Point</td><td>Arrival_Time</td><td>Destination_Point</td><td>Departure_Time</td><td>Day</td><td>Train_Class</td><td>Fare</td><td>Seats_Left</td></thead>";

while($row = mysqli_fetch_array($query))
{
 echo "<tr><td>".$row[0]."</td><td>".$row[1]."</td><td>".$row[2]."</td><td>".$row[3]."</td><td>".$row[4]."</td><td>".$row[5]."</td><td>".$row[6]."</td><td>".$row[7]."</td><td>".$row[8]."</td><td>".$row[9]."</td></tr>";
}
echo "</table>";

//$rowcount=mysqli_num_rows($query);
if(mysqli_num_rows($query) == 0)
{
 echo "No such train <br> ";

}
?>

If you wish to proceed with booking fill in the following details:<br><br>
<form action="resvn.php" method="post">
Registered Mobile No: <input type="text" name="mno" required><br><br>
Password: <input type="password" name="password" required><br><br>
Enter Train No:
<select name="tno" required width="200" style="width: 200px">
<option value="" >Enter train number</option>
<option value="" >6</option>
<option value="" >12</option>
<option value="" >13</option>
<option value="" >14</option>
<option value="" >15</option>
<option value="" >16</option>
<option value="" >17</option>
<option value="" >18</option>
<option value="" >19</option>
<option value="" >20</option>
<option value="" >21</option>
<option value="" >22</option> 
<option value="" >23</option>
</select>
<br><br>
Enter Class: <select name="class" required width="200" style=" width: 200px">
<option value="">Enter the class</option>
<option value="" >AC1</option>
<option value="" >AC2</option>
<option value="" >AC3</option>
<option value="" >EC</option>
<option value="" >CC</option>
<option value="" >SL</option>
</select>
<br><br>
No. of Seats: <input type="text" name="nos" required><br><br>
<input type="submit" value="Proceed with Booking"><br><br>
</form>

<?php

echo " <a href=\"http://13.48.127.133/railway/enquiry.php\">More Enquiry</a> <br>";

$conn->close(); 
?>

<br><a href="http://13.48.127.133/railway/index.htm">Go to Home Page!!!</a>
</body>
</html>
