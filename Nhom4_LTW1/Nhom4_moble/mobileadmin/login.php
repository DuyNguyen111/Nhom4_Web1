<?php
session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title>DANG NHAP</title>
	<style >
		form {
  box-sizing: border-box;
  width: 260px;
  margin: 100px auto 0;
  box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
  padding-bottom: 40px;
  border-radius: 3px;
}
form h1 {
  box-sizing: border-box;
  padding: 20px;
}
 
input {
  margin: 40px 25px;
  width: 200px;
  display: block;
  border: none;
  padding: 10px 0;
  border-bottom: solid 1px #1abc9c;
  transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #1abc9c 4%);
  background-position: -200px 0;
  background-size: 200px 100%;
  background-repeat: no-repeat;
  color: #0e6252;
}
input:focus, input:valid {
  box-shadow: none;
  outline: none;
  background-position: 0 0;
}
input:focus::-webkit-input-placeholder, input:valid::-webkit-input-placeholder {
  color: #1abc9c;
  font-size: 11px;
  transform: translateY(-20px);
  visibility: visible !important;
}
 
button {
  border: none;
  background: #1abc9c;
  cursor: pointer;
  border-radius: 3px;
  padding: 6px;
  width: 200px;
  color: white;
  margin-left: 25px;
  box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
}
button:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
}
p{		
		margin-bottom: 10px;
	text-align: center;
	}
	</style>

</head>
<body>
	<div>
		<form action="" method="POST">
			<h1>Login</h1>
			<p> Username <input type="text" name="user"></p>
			<p> Password <input type="password" name="pass"></p>
			<button>Login</button>
			  
		</form>
	</div>
	<?php

	if(!empty($_POST['user']) && !empty($_POST['pass']))
	{
		$username = $_POST['user'];
		$password = $_POST['pass'];
		$hash = password_hash("123456",PASSWORD_DEFAULT);
		if($username=="admin"&& password_verify ($password,$hash)){
			$_SESSION['$user'] = $username;
			echo $_POST['yes'];
			setcookie($_POST['yes']);
			header('Location:index.php');
		}
		else {
	           echo " Sai Username hay Password";
	           echo " Vui long nhap lai!";
	     }
	 }
	 setcookie("x");
	 if(!empty($_POST['yes']))
	 	$_COOKIE['x'] == 1;
	 

  ?>
</body>
</html>