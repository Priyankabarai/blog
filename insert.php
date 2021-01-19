<?php
$username = 'root';
$password = '';
$connection = new PDO( 'mysql:host=localhost;dbname=loginsystem', $username, $password );
include('function.php');
session_start();

if(isset($_POST["operation"]))
{
	if($_POST["operation"] == "Add")
	{
		$statement = $connection->prepare("
			INSERT INTO post (posts, category,username) 
			VALUES (:posts, :category, :username)
		");
		$result = $statement->execute(
			array(
				':posts'	=>	$_POST["posts"],
				':category'	=>	$_POST["category"],
				':username'	=>	$_POST["username"]
			)
		);
		if(!empty($result))
		{
			echo 'Data Inserted';
		}
	}
	if($_POST["operation"] == "Edit")
	{
		$statement = $connection->prepare(
			"UPDATE post 
			SET posts = :posts, category = :category 
			WHERE id = :id
			"
		);
		$result = $statement->execute(
			array(
				':posts'	=>	$_POST["posts"],
				':category'	=>	$_POST["category"],
				':id'			=>	$_POST["user_id"]
			)
		);
		if(!empty($result))
		{
			echo 'Data Updated';
		}
	}
}

?>