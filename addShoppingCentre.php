<?php
 $dsn = "localhost";
 $username = "root";
 $password = "";
 $dbname = "shoppingcentrecw";

    $centre_name = $_POST["CENTRE_NAME"];
    $location = $_POST["LOCATION"];
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO CENTRE_IW (CENTRE_NAME, LOCATION) Values('" . $centre_name . "', '" . $location . "')";
    $result = $conn->query($sql);
    header('Location: centre.php');
?>