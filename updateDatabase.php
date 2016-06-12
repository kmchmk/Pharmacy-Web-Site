<?php
if ( $_SERVER['REQUEST_METHOD'] === 'POST' )
{
    $sql = file_get_contents('php://input');
}



$servername = "localhost";
$username = "malithtk_chanaka";
$password = "123chanaka123";
$dbname = "malithtk_pharmacy";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

// sql to create table
//$sql = "INSERT INTO `malithtk_pharmacy`.`product` (`code`, `productName`, `brand`, `rackNo`, `price`, `description`) VALUES ('1000', 'testing', 'just', '13', '41.23', 'this is http');";

if ($conn->query($sql) === TRUE) {
    echo "Done";
} else {
    echo "Error executing query: " . $conn->error;
}

$conn->close();
?>