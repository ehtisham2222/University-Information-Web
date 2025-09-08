<?php
$conn = mysqli_connect("localhost", "root", "", "project");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$username = $_POST['username'];
$password = $_POST['password'];

$username = mysqli_real_escape_string($conn, $username);
$password = mysqli_real_escape_string($conn, $password);

$data = "INSERT INTO signup VALUES('', '$username', '$password')";
$check = mysqli_query($conn, $data);

if ($check) {

    header("Location: index9.html");
    exit();
} else {
    echo "Data not sent: " . mysqli_error($conn);
}
?>
