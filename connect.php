<?php
$dsn = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$dsn;dbname=shoppingcentrecw", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully Iona!";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
?>