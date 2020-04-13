<?php
    $dsn = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shoppingcentrecw";
  
    $conn = new mysqli($dsn, $username, $password, $dbname);
  
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM CENTRE_IW";
    $result = $conn->query($sql);
    $html="";
    // Really good for error handling - I was able to see straight away that I had the wrong DB name when trying to connect. 
    if ($result = $conn->query($sql)) {
    }
    else {
        printf("Query failed: %s\n", $conn->error);
    }

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $html .= '<div>' . $row["CENTRE_CODE"] . ': ' . $row["CENTRE_NAME"] . ': ' . $row["LOCATION"];
        }
    } else {
        $html .= "0 results";
    }
    echo $html;
?>