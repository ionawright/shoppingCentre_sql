<?php
    $dsn = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shoppingcentrecw";
  
    $conn = new mysqli($dsn, $username, $password, $dbname);
  
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT CENTRE_SHOP_IW.SHOP_NO, SHOP_IW.SHOP_NAME, CENTRE_SHOP_IW.CENTRE_CODE, CENTRE_IW.CENTRE_NAME
    FROM CENTRE_SHOP_IW 
    INNER JOIN SHOP_IW ON CENTRE_SHOP_IW.SHOP_NO = SHOP_IW.SHOP_NO 
    INNER JOIN CENTRE_IW ON CENTRE_SHOP_IW.CENTRE_CODE = CENTRE_IW.CENTRE_CODE";

    $result = $conn->query($sql);
    $html="";
    if ($result = $conn->query($sql)) {
    }
    else {
        printf("Query failed: %s\n", $conn->error);
    }

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $html .= '<div style="padding:20px;>' . $row["CENTRE_NAME"] . ':   ' . $row["SHOP_NAME"] . '</div>';
        }
    } else {
        $html .= "0 results";
    }
    echo $html;
?>