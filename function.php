<?php


function get_total_all_records()
{
	$username = 'root';
	$password = '';
	$connection = new PDO( 'mysql:host=localhost;dbname=loginsystem', $username, $password );
	$statement = $connection->prepare("SELECT * FROM post WHERE active='0'");
	$statement->execute();
	$result = $statement->fetchAll();
	return $statement->rowCount();
}

?>