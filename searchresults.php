<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search results</title>
        <link rel="stylesheet" href="./css/style.33.css" type="text/css">
        <script type="text/javascript" src="./css/jquery.min.js"></script>
        <!--[if lt IE 9]>
        <script src="/ie9.js">i_am_old_ie = true;</script>
        <![endif]-->
        <script type="text/javascript" src="./css/tzs.10.js"></script>
        <link rel="alternate" type="application/rss+xml" title="arrow" href="https://torrentz.eu/feed?q=arrow">
        <link rel="search" href="https://torrentz.eu/secureopensearch.xml" type="application/opensearchdescription+xml" title="Torrentz Search">
        <meta name="viewport" content="width=820">
    </head>
    <body>
        <?php
        $searchKey = $_GET["q"];

//        $servername = 'ec2-54-243-248-181.compute-1.amazonaws.com';
//        $username = 'engfvmcksetoyg';
//        $password = '4UNynjj71Qx0bWuUdyuf5def8O';
//        $dbname = 'd459s5o7dirqk7';
        
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "malithtk_pharmacy";


// Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM product where productName Like '%$searchKey%' or brand Like '%$searchKey%' or description Like '%$searchKey%'";
        $result = $conn->query($sql);

        $numRows = mysqli_num_rows($result);
        ?>



        <div class="top">
            <h1><a href="index.php" title="Search Engine">Pharmacy</a></h1>
            <ul>
                <li><a href="searchresults.php?q=" title="Show all the products available">Show all</a></li>
                <!--                <li><a href="https://torrentz.eu/my" title="Personal Search">myTorrentz</a></li>-->
<!--                <li><a href="https://torrentz.eu/profile" title="My Profile">Profile</a></li>
                <li><a href="https://torrentz.eu/help" title="Get Help">Help</a></li>-->
            </ul>
        </div>

        <?php
        if (empty($searchKey)) {
            echo '<form action="searchresults.php" method="get" class="search"><fieldset><input type="text" name="q" value= "" id="thesearchbox" autocomplete="off"><ul class="autocomplete" style="top: 119px; left: 84.5px; width: 909px;"></ul><input type="submit" value="Search" id="thesearchbutton"></fieldset></form>';
        } else {
            echo
            '<form action="searchresults.php" method="get" class="search"><fieldset><input type="text" name="q" value= "' . $searchKey . '"  id="thesearchbox" autocomplete="off"><ul class="autocomplete" style="top: 119px; left: 84.5px; width: 909px;"></ul><input type="submit" value="Search" id="thesearchbutton"></fieldset></form>';
        }
        ?>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#thesearchbox").autocomplete("/suggestions.php");
            });
        </script>

        <iframe src="./css/torrentz.eu.5654.html" frameborder="0" id="mgid" seamless="seamless" scrolling="no" style="display: none !important;"></iframe><div class="results"><h2 style="border-bottom: none"> <?php if (empty($searchKey)) {
            echo "Enter a search keyword";
        } else if ($numRows == 1) {
            echo "1 result found";
        } else {
            echo $numRows . " results found";
        } ?> </h2>  <h3>Price</h3>






            <?php
            if ($result->num_rows > 0) {

                // output data of each row
                while ($row = $result->fetch_assoc()) {
                    //   echo "name: " . $row["productName"] . " - price: " . $row["price"] . "<br>";


                    $productName = $row['productName'];
                    $brand = $row['brand'];
                    $description = $row['description'];
                    $price = $row['price'];
                    //-display the result of the array
                    echo '<dl><dt><a title= "' . $description . '" >' . $productName . '</a> » ' . $brand . '</dt><dd><span title = "Available" class="v" style="color:#fff;background-color:#79CC53">✔</span>  <p align="right" <span class="s">' . $price . ' Rs</span></p>  </dd></dl>';
                }
            } else {
                echo "try again...";
            }
            $conn->close();
            ?>


            <p></p> 
        </div><div style="overflow: auto;width: 100%"><ul class="relatedq"><li> Thank you!  </li></ul> </div>
        <div class="recent">   All Rights Received </div><script type="text/javascript" src="https://torrentz.eu/show_ads.js"></script><div class="footer">©2016<br><span style="color:#FFF">Developed by චානක මධුරංග කරුණාරත්න</span></div></body></html>


