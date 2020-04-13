<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Shopping Centre DB Coursework</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style/style.css'>
    <script src='main.js'></script>
</head>
<body>
    <div class="grid-container">
        <div class="header">
            <h3>Shopping Centre Coursework</h3>
            <hr />
            <div class="menu">
                <ul>
                    <a class="nav" href="index.php">Home</a>
                    <a class="nav" href="shop.php">Shops</a>
                    <a class="nav" href="centre.php">Centres</a>
                </ul>
            </div>
        </div>
        <div class="left"></div>
        <div class="middle">
        <h3>Add a new centre with shops:</h3> 
            <form id="add-centre" method="post" action="addShoppingCentre.php">
                Name:<input id="centre-name" type="text" />
                Location:<input id="centre-location" type="text" />
                <input id="add-centre" type="submit" value="ADD" />
            </form>

            <h3>Add a new shop :<h3>
            <form id="add-shop" method="post" action="addShop.php">
                Name:<input id="shop-name" type="text" label="insert-shop-name" />
                <input type="submit" value="ADD" />
            </form>
            <br />
            <?php include 'getCentreShop.php';?>
        </div>
        <div class="right"></div>
        <div class="footer"><p>Iona Wright<p></div>
    </div>

</body>
</html>