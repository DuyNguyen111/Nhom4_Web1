<?php
require "config.php";
require "db.php";
$db = new Db;
$id = $_GET['ID'];
$product1 = $db->xoaSP($id);
header('location:index.php');
?>