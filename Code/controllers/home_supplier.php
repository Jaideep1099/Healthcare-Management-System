<?php

require_once "validation.php";

session_start();

if(!sup_loggedin_check($_SESSION)) {
    header("Location: /supplier/login");
}
else{
    require 'views/home_supplier_view.php';
}

?>