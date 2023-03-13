<?php
$login = false;
$showError = false;
if($_SERVER["REQUEST_METHOD"] == "POST"){
    include '_dbconnect.php';
    $username = $_POST["username"];
    $password = $_POST["password"];   
    // $sql = "Select * from users where username='$username' AND password='$password'";
    $sql = "SELECT * FROM users WHERE username = '$username' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 1){
        while($row=mysqli_fetch_assoc($result)){
            if (password_verify($password, $row['password'])){ 
                $login = true;
                session_start();
                $_SESSION['loggedin'] = true;
                $_SESSION['username'] = $username;
                $_SESSION['regiao'] = $row['regiao'];
                $_SESSION['privilegio'] = $row['privilegio'];
                header("location: modulos/home.php");
            } 
            else{
                $showError = "Senha Incorreta";
            }
        }
        
    } 
    else{
        $showError = "Senha Incorreta";
    }
}
?>