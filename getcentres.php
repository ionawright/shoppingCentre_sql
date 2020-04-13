<?php
    $dsn = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shoppingcentrecw";
  
    $conn = new mysqli($dsn, $username, $password, $dbname);
  
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM CENTRE_IW ORDER BY CENTRE_NAME";
    $result = $conn->query($sql);
    $html="";
    if ($result = $conn->query($sql)) {
    }
    else {
        printf("Query failed: %s\n", $conn->error);
    }

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $html .= '<div style="padding:20px;">' . ' Name : ' . $row["CENTRE_NAME"] . ' / ' . ' Location :   ' . $row["LOCATION"] . '</div>';
        }
    } else {
        $html .= "0 results";
    }
    echo $html;
?>