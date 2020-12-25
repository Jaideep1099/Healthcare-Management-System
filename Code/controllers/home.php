<?php

require_once "validation.php";

session_start();

if(!loggedin_check($_SESSION)) {
    header("Location: /login");
}
else{
    
    if($_SESSION['type']=='S')
        require 'views/home_staff_view.php';
    else
        require 'views/home_user_view.php';
}
?>