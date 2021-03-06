<?php

class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	public function product1($page, $per_page){
		//Viet cau SQL
		$first_link = ($page - 1) * $per_page;
		$sql = "SELECT * FROM products, manufactures, prototypes WHERE products.manu_ID = manufactures.manu_ID AND products.type_ID = prototypes.type_ID LIMIT $first_link, $per_page ";

		//$sql = "SELECT * FROM products WHERE id = $id";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
		
	}
	public function product2($id){
		//Viet cau SQL
		$sql = "SELECT * FROM products  WHERE products.ID = $id ";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
		
	}
	public function xoaSP($id){
		//Viet cau SQL
		$sql = "DELETE FROM products WHERE ID = $id";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return($result);
		
	}
	public function timKiemSP($key, $page, $per_page){
		$first_link = ($page - 1) * $per_page;
		//Viet cau SQL
		$sql = "SELECT * FROM products, manufactures, prototypes WHERE products.manu_ID = manufactures.manu_ID AND products.type_ID = prototypes.type_ID AND name LIKE '%$key%' LIMIT $first_link, $per_page" ;
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
		
	}
	
	
	public function paginate($url, $total, $page, $per_page){
		$total_links = ceil($total/$per_page);
		$link = "";
		for($j = 1; $j <= $total_links; $j++){
			$link = $link."<li><a href='$url?page=$j'>$j</a></li>";
		}
		return $link;
	}
	public function paginate2($key, $url, $total, $page, $per_page){
		$total_links = ceil($total/$per_page);
		$link = "";
		for($j = 1; $j <= $total_links; $j++){
			$link = $link."<li><a href='$url?key=".$key."&page=$j'>$j</a></li>";
		}
		return $link;
	}		
	public function demSLSP(){
		$sql = "SELECT * FROM products";

		$result = self::$conn->query($sql);
		return $result->num_rows;
	}
	public function timKiemSLSP($key, $page, $per_page){
		$first_link = ($page - 1) * $per_page;
		//Viet cau SQL
		$sql = "SELECT * FROM products, manufactures, prototypes WHERE products.manu_ID = manufactures.manu_ID AND products.type_ID = prototypes.type_ID AND name LIKE '%$key%' LIMIT $first_link, $per_page";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function demSLSPTK($key){
		$sql = "SELECT * FROM products, manufactures, prototypes WHERE products.manu_ID = manufactures.manu_ID AND products.type_ID = prototypes.type_ID AND name LIKE '%$key%'";
		$result = self::$conn->query($sql);
		return $result->num_rows;
	}
	public function addProduct($manu_name, $type_name, $name, $description, $price, $image)
	{
		$sql = "INSERT INTO products(name, description, price, image, type_ID, manu_ID) VALUES ('$name', '$description', '$price', '$image', $type_name, $manu_name)";
		$result = self::$conn->query($sql);
		return $result;
	}
	public function __destruct(){
		self::$conn->close();
	}
}