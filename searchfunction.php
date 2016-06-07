<?php

$searchKey = $_GET["q"];



$servername = 'localhost';
$username = 'root';
$password = '1234';
$dbname = 'pharmacy';


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from product where productName Like '%$searchKey%' or brand Like '%$searchKey%' or description Like '%$searchKey%'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        //   echo "name: " . $row["productName"] . " - price: " . $row["price"] . "<br>";


        $productName = $row['productName'];
        $price = $row['price'];
        //-display the result of the array 
        echo "<br>";
        echo $productName;

    }
} else {
    echo "0 results";
}
$conn->close();
?>