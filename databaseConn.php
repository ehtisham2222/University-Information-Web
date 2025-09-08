<?php
$servername="localhost";
$username="root";
$password="";
$db_databse="project";
$conn=mysqli_connect($servername,$username,$password,$db_databse);
echo"successfully connected";
echo"<br>";
$sql="SELECT * FROM login";
$result=mysqli_query($conn,$sql);
$abc=mysqli_num_rows($result);
echo "the no of rows is:$abc";


 ?>