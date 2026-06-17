<?php

session_start();
include "config.php";

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $result = mysqli_query(
        $conn,
        "SELECT * FROM users WHERE username='$username'"
    );

    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;

        header("Location: dashboard.php");
    } else {
        echo "Invalid Username or Password";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h2>Login</h2>

    <form method="POST">

        Username:
        <input type="text" name="username">

        <br><br>

        Password:
        <input type="password" name="password">

        <br><br>

        <input type="submit"
            name="login"
            value="Login">

    </form>

</body>

</html>