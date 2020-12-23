<?php

require_once "connection.php";

$conn = dbconnect();

echo "Login Controller";


require "views/login_view.php";

?>