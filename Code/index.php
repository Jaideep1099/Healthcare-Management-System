<?php
require "routes.php";

$uri = trim($_SERVER["REQUEST_URI"],'/');

if(strstr($uri,"supplier/orderview")){
    $uri = rtrim($uri,"?o_id=".$_GET['o_id']);
}

if(array_key_exists($uri, $Routes)){

    require $Routes[$uri];
}
else {
    header("HTTP/1.1 404 Not Found");
    echo "URL Not Found";
}

?>