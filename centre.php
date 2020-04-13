<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Shopping Centre DB Coursework</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style/style.css'>
    
    <script>
        function update(centre_code, centre, location) {
            document.getElementById("middle").style.visibility="hidden";
        }
        function add() {
            document.getElementById("add-centre").style.visibility="visible";
        }
    </script>

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
        <div class="left">
            <form id="add-centre" method="post" action="addShoppingCentre.php">
                <h3>Name:</h3> 
                <input id="centre-name" type="text" /><br>
                <h3>Location:</h3> 
                <input id="centre-location" type="text" /><br>
                <input type="submit" value="add" />
			</form>
        </div>
            <div class="middle">
            <?php include 'getcentres.php';?>
            </div>
        <div class="right"></div>
        <div class="footer">
            <p>Iona Wright<p>
        </div>
    </div>

</body>
</html>