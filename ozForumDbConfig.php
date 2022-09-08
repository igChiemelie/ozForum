<?php
    $db = new mysqli('localhost', 'root', '', 'ozforum');

    if($db->connect_errno){
        die('Database connection error. Please try again later');
    }
?>