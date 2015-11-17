<?php
    $fail = "failure";
    $id = $_GET['ID'];
    try{
        require('dbconfig.php');
        
        $query = $conn->exec('set @param1 = '.$id.'; call selectById_TUserDetails(@param1, @param2, @param3);');
        
        $result = $conn->query('select @param1 as ID, @param2 as Name, @param3 as Phone')->fetch(PDO::FETCH_ASSOC);
        
        if ($result['ID'] == NULL) echo $fail;
        
        $json_result = json_encode($result);
        
        echo $json_result;
        
        $conn = null;   
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        echo $fail;
    }
    
?>