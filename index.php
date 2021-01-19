<?php
require_once('db.php');
 
$sql = "SELECT posts,category FROM post WHERE active='0'";
$result = $con->query($sql);
$author = [];
if ($result->num_rows > 0) {
    $author = $result->fetch_all(MYSQLI_ASSOC);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>		
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
			body
			{
				margin:0;
				padding:0;
				background-color:#f1f1f1;
			}
			.box
			{
				width:1270px;
				padding:20px;
				background-color:#fff;
				border:1px solid #ccc;
				border-radius:5px;
				margin-top:25px;
			}
		</style>
</head>
<body>
	<div class="container box">
		<h1 align="center">BLOG</h1>
		<div align="right">
			<button type="button" class="btn btn-info" onclick="location.href = 'login.php';">Login</button>
			</div>
			<br/>
    	<table id="userTable" class="table table-bordered table-striped">
        <thead>
            <th>Post</th>
            <th>Category</th>
        </thead>
        <tbody>
            <?php if(!empty($author)) { ?>
                <?php foreach($author as $user) { ?>
                    <tr>
                        <td><?php echo $user['posts']; ?></td>
                        <td><?php echo $user['category']; ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
        </tbody>
    </table>
    <br/>
	<div align="right">
			<button type="button" class="btn btn-primary" onclick="location.href = 'registration.php';">Create Post</button>
			</div>
	</div>
   
    <script>
    $(document).ready(function() {
        $('#userTable').DataTable({
        "lengthMenu": [3,10,20]
    });
    });
    </script>
</body>
</html>