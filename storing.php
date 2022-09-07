<?php
if(!isset($_POST['action']))
    die("No action set!");

$db_host = 'localhost'; //database host
$db_user = 'root';//database username
$db_pwd = 'root';//database password
$db_database = 'fpd'; //database name

//connect to database
$connection = mysqli_connect($db_host, $db_user, $db_pwd) or die('Connection failed to mysql database. Check the database host, username and password.');
//select database
mysqli_select_db($connection,$db_host,$db_user,$db_database,$db_pwd) or die("Database could not be selected.");

//store product
if($_POST['action'] == 'store') {
    //get product views
    $carType = $_POST['carType'];
    $price = $_Post['price'];
    $model = $_Post['model'];
    $licenseNo = $_Post['licenseNo'];
    $year = $_Post['year'];
    //insert products in database table
    $sql = "INSERT INTO products (carType, price, model, licenseNo, year) VALUES('$carType, $price, $model, $licenseNo, $year')";
    $result = mysqli_query($carType,$price,$model,$licenseNo, $year) or die('Product could not be stored.');

}
//load product
else if($_POST['action'] == 'load') {
    //get product ID
    $id = $_POST['id'];
    //select product by ID
    $sql = "SELECT cardetails FROM products WHERE ID=$carId";
    $query = mysqli_query($conn,$sql) or die('Product could not be selected.');
    //get the product views
    
}

mysqli_close($conn,$sql);