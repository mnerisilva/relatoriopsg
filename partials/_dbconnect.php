<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "senac";

$conn = mysqli_connect($server, $username, $password, $database);
if (!$conn){
//     echo "success";
// }
// else{
    die("Error". mysqli_connect_error());
}

    mysqli_set_charset($conn, 'utf8mb4');

?>