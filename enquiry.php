<html>
<head>
<style>
	body{
		background-image: url("https://png.pngtree.com/background/20210711/original/pngtree-creative-synthetic-atmospheric-railway-background-picture-image_1075537.jpg");
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
$_SESSION=array();
session_destroy();

?>
<div align="center"> 
<form action="enquiry_result.php" method="post">

Starting Point: <select id="sp" name="sp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
	
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
   
Destination Point: <select id="dp" name="dp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
     
Date of Journey: <input type="date" name="doj" required><br>
<input type="submit">

</form>
<br><br><a href="http://13.48.127.133/railway/index.htm">Go to Home Page!!!</a>
</body>
</html>
