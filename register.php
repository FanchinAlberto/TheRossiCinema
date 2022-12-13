<?php
require_once "dbConfig.php";

$data = json_decode(file_get_contents('php://input'), true);
$name = $data['name'];
$surname = $data['surname'];
$email = $data['eR'];
$password = $data['pR'];

$username = $name . $surname;
global $dbh;
$sql="INSERT INTO `utenti`(`NomeUtente`,`Password`,`Email`) VALUES(:nome,:password,:email)";
try{
$query = $dbh->prepare($sql);

$query->bindParam(':nome',$username,PDO::PARAM_STR);
$query->bindParam(':email', $email,PDO::PARAM_STR);
$query->bindParam(':password', $password,PDO::PARAM_STR);
// Query Execution
$query->execute();
$results=  = [
    "success" => true
];
header("Content-Type: application/json");
    echo json_encode($results);
}
catch(Exception $sql){
    $results=  = [
        "success" => false
    ];
    header("Content-Type: application/json");
        echo json_encode($results);
}
?>