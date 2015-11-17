<?php

    function selectFromTable($id){
        try {
        require('dbconfig.php');

        $query = $conn->exec('set @param1 = '.$id.'; call selectById_TUserDetails(@param1, @param2, @param3);');

        $result = $conn->query('select @param1 as ID, @param2 as Name, @param3 as Phone')->fetch(PDO::FETCH_ASSOC);

        if ($result['ID'] == NULL) return false;
        
        $json_result = json_encode($result);

        return $json_result;

        $conn = null;   
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            return false;
        }
    }
?>