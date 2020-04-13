<?php
  $dsn = "localhost";
  $username = "root";
  $password = "";
  $dbname = "shoppingcentrecw";

  $shop_name = $_POST["SHOP_NAME"];
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
  }

  $sql = "INSERT INTO SHOP_IW (SHOP_NAME) Values('" . $shop_name . "')";
  $result = $conn->query($sql);
  header('Location: shop.php');

?>