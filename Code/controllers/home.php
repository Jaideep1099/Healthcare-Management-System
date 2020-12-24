<?php

require_once "validation.php";

session_start();

if(!loggedin_check($_SESSION)) {
    header("Location: /login");
}
else{
    
    if($_SESSION['type']=='S')
        require 'views/home_view_staff.php';
    else
        require 'views/home_view_user.php';
}
?>