<!DOCTYPE html>
<html>
<head>
	<title>RideOnCabs Assessment</title>
	<script type="text/javascript">
	function clearSelect () {
		document.getElementById("identifier").value = "";
	}
	function clearInsert () {
		document.getElementById("nameInp").value = "";
		document.getElementById("phoneNum").value = "";
	}
	</script>
</head>
<body>

<h2>Get information about a particular id</h2>
<form method = 'GET' action='index.php' onsubmit="clearInsert">
	<label>ID</label>
	<input type="text" name="ID" id="identifier">
	<br>
	<input type="submit" value="Select">
</form>

<h2>Insert data into database</h2>
<form method = 'POST' action='index.php' onsubmit="clearSelect">
	<label>Name</label>
	<input type="text" name="Name" id="nameInp">
	<br>
	<label>Phone Number</label>
	<input type="text" name="phoneNumber" id="phoneNum">
	<br>
	<input type="submit" value="Insert">
</form>
</body>
</html>
<?php

if (isset($_POST['Name']) && isset($_POST['phoneNumber'])){
	require 'insert.php';
	$status = insertIntoTable($_POST['Name'], $_POST['phoneNumber']);
	$statusObj = json_encode($status);
	?>
		<script type="text/javascript">
		alert(<?php echo $statusObj; ?>);
		</script>
	<?php
}

if (isset($_GET['ID'])){
	require 'select.php';
	$result = selectFromTable($_GET['ID']);
	if ($result == false){
		?>
			<script type="text/javascript">
			alert("no entry for id = <?php echo $_GET['ID'];?>");
			</script>
		<?php
	}
	else{
		$decoded_result = json_decode($result);
		?>
			<script type="text/javascript">
			var alertString = "id = <?php echo $decoded_result->ID; ?> \n"
							+ "Name = <?php echo $decoded_result->Name; ?>\n"
							+ "Phone Number = <?php echo $decoded_result->Phone; ?>";
			alert(alertString);
			</script>
		<?php
	}
}

?>
