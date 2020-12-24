<?php

function dbconnect() {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "HMS";

    try {
        $conn = new PDO("mysql:host={$servername};dbname={$dbname}", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        return $conn;

    } catch(PDOException $e) {
        die("Database Connection Failed: ".$e->getMessage());
    }

}


function connect_database(){
    $config = [
        'servername' => 'localhost',
        'database' => 'HMS',
        'username' => 'root',
        'password' => '',
    ];

    $conn = mysqli_connect(
        $config['servername'],
        $config['username'],
        $config['password'],
        $config['database']
    );
    if(!$conn) {
        die("MySQL connection failed: ". mysqli_connect_error());
    }
    return $conn;
}

?>