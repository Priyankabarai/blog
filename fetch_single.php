<?php
$username = 'root';
$password = '';
$connection = new PDO( 'mysql:host=localhost;dbname=loginsystem', $username, $password );
include('function.php');
if(isset($_POST["user_id"]))
{
	$output = array();
	$statement = $connection->prepare(
		"SELECT * FROM post 
		WHERE id = '".$_POST["user_id"]."' 
		LIMIT 1"
	);
	$statement->execute();
	$result = $statement->fetchAll();
	foreach($result as $row)
	{
		$output["posts"] = $row["posts"];
		$output["category"] = $row["category"];
	}
	echo json_encode($output);
}
?>