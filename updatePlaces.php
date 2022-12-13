<?php
require_once "dbConfig.php";

$data = json_decode(file_get_contents('php://input'), true);
$places = $data['seats'];
$show = $data['show'];
$total = $data['total'];
$date = $data['date'];

$new_seats = $total - $places;

global $dbh;
$sql = "UPDATE `proiezioni` SET `posti`='" . $new_seats . "'" . "WHERE film = " . $show . "AND giorno = " . $date;
try{
        
    $query = $dbh->prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    
}
catch(Exception $sql){
    echo $sql;
}
?>