<?php

require_once "connection.php";
require_once "validation.php";

session_start();

if(!loggedin_check($_SESSION)) {
    header("HTTP/1.1 405 Not Allowed");
}
else{
    $conn = connect_database();
    $qry = "UPDATE SUPPLIES SET DELIVERED=1 WHERE ORD_ID={$_POST['ord_id']};" ;
    $res = mysqli_query($conn, $qry);

    if(!$res) {
        header("HTTP/1.1 404 Not Found");
    }
    else{
        header("HTTP/1.1 200 OK");
    }

}