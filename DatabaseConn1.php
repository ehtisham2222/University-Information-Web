<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_databse = "project";
$conn = mysqli_connect($servername, $username, $password, $db_databse);
echo "<h2>Successfully connected </h2><br>";
$sql = "SELECT * FROM login";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>email</th>
                <th>password</th>
            </tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>
                <td>" . $row["ID"] . "</td>
                <td>" . $row["email"] . "</td>
                <td>" . $row["password"] . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "No records found.";
}
?>
