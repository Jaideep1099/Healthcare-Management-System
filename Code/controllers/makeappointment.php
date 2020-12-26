<?php

require_once "validation.php";
require_once "connection.php";

session_start();

if(!loggedin_check($_SESSION)) {
    header("Location: /login");
}
else{

    require "views/makeappointment_view.php";
}