<?php
require_once "pdo.php";
			
			$contactName=$_POST["contactName"];
			$phoneNumber=$_POST["phoneNumber"];
			$contactMessage=$_POST["contactMessage"];

			
		$stmt = $pdo->query("INSERT INTO `reservation`(`contactName`, `phoneNumber`, `contactMessage`) VALUES ('$contactName','$phoneNumber','$contactMessage')");
		header("location:http://localhost/ELECTRIC CAR/index.html");


		



?>