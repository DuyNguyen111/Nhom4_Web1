<?php
require "db.php";
require "config.php";
$name = $_POST['name'];
$type_name = $_POST['type_id'];
$manu_name = $_POST['manu_id'];
$price = $_POST['price'];
$description = $_POST['description'];
$image = $_FILES['fileUpload']['name'];

$product = new db();

$target_dir = "./public/image/";
$target_img = $target_dir . basename( $_FILES['fileUpload']['name']);
	
if(move_uploaded_file($_FILES['fileUpload']["tmp_name"], $target_img))
	{
		$product->addProduct($manu_name, $type_name, $name, $description, $price, $image);
		hezader('location:index.php');
	}
else
	{
		header('location:addproduct.php');
	}
?>