<?php
$conn = mysqli_connect("localhost", "root", "", "project");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$email = $_POST['email'];
$password = $_POST['password'];

$email = mysqli_real_escape_string($conn, $email);
$password = mysqli_real_escape_string($conn, $password);

$data = "INSERT INTO login VALUES('', '$email', '$password')";
$check = mysqli_query($conn, $data);

if ($check) {
  
    header("Location: index9.html");
    exit();
} else {
    echo "Data not sent: " . mysqli_error($conn);
}
?>
