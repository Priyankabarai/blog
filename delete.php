<?php
$username = 'root';
$password = '';
$connection = new PDO( 'mysql:host=localhost;dbname=loginsystem', $username, $password );
include("function.php");

if(isset($_POST["user_id"]))
{
	$statement = $connection->prepare(
			"UPDATE post 
			SET active='1' 
			WHERE id = :id"
	);
	$result = $statement->execute(
		array(
			':id'	=>	$_POST["user_id"]
		)
	);
	
	if(!empty($result))
	{
		echo 'Data Deleted';
	}
}



?>