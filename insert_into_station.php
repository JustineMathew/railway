<html>
<body style=" background-color:#FDF5E6;
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">


<?php

require "db.php";

$sql = "INSERT INTO station(sname) VALUES ('".$_POST["sname"]."')";

if ($conn->query($sql) === TRUE) {
    echo " '".$_POST["sname"]."':New record created successfully";
} else {
    echo "Error:" . $conn->error;
}

echo "<br> <a href=\"http://13.48.127.133/railway/admin_login.php\">Go Back to Admin Menu!!!</a> ";

$conn->close();
?>

</body>
</html>
