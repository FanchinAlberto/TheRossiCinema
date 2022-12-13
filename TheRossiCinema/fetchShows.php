<?php
require_once "dbConfig.php";

$data = json_decode(file_get_contents('php://input'), true);
$id = $data['filmID'];

global $dbh;
$sql = "SELECT * FROM `proiezioni` WHERE film = " . $id;
try{
        
    $query = $dbh->prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    header("Content-Type: application/json");
    echo json_encode($results);
    
}
catch(Exception $sql){
    echo $sql;
}
?>