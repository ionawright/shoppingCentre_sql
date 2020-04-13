<?php
    $dsn = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shoppingcentrecw";
  
    $conn = new mysqli($dsn, $username, $password, $dbname);
  
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM SHOP_IW";
    $result = $conn->query($sql);
    $html="";

    if ($result = $conn->query($sql)) {
    } else {
        printf("Query failed: %s\n", $conn->error);
    }

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $html .= '<div>' . $row["SHOP_NO"] . ': ' . $row["SHOP_NAME"];
        }
    } else {
        $html .= "0 results";
    }
    echo $html;
?>