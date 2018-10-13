<?php 
require "db.php";
require "config.php";
class users extends db{
	public function login($user, $pass)
	{
		$sql = "SELECT * FROM users WHERE name = '".$user. "' AND password = '".$pass."' ";
		$result = self::$conn->query($sql);
		if($result->num_rows< 1){
			return false;
		}		
		else{
				return true;
			}
		}
}
