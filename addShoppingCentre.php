<?php
    $centre_name = $_POST["centre_name"];
    $location = $_POST["location"];

    $sql = "Insert into centre (centre_name, location) Values('" . $centre_name . "', '" . $location . "')";
    $result = $conn->query($sql);
    header('Location: centre.php');
?>