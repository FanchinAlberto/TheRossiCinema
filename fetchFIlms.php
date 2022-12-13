<?php
require_once "dbConfig.php";

global $dbh;
$sql = "SELECT * FROM film";
try{
        
    $query = $dbh->prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    header("Content-Type: application/json");
    $_SESSION["Films"] = json_encode($results);
    echo json_encode($results);
    
}
catch(Exception $sql){
    echo $sql;
}
?>