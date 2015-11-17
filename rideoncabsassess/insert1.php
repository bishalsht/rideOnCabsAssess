<?php
$name = $_POST['name'];
$pn = $_POST['number'];

$returnMsg = "success";
try {
	require('dbconfig.php');
    $sql = 'set @param1 = "'.$name.'"; 
            set @param2 = "'.$pn.'";
            call insertIntoTUserDetails(@param1, @param2);';
    $query = $conn->prepare($sql);

    if (!$query->execute()) $returnMsg = "failure";
    $conn = null;

} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    $returnMsg = "failure"; 
}

$returnString = json_encode($returnMsg);
echo $returnString;
?>