<?php



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


$sql = "";
if ($conn->query($sql) === TRUE) {
    echo "Done";
} else {
    echo "Error executing query: " . $conn->error;
}

$conn->close();
?>