<?php
  require('ozForumDbConfig.php');//DB connection

  $res = $db->query('CREATE DATABASE IF NOT EXISTS ozForum');//get all categories
  
  if($res){//if DB cr8tion successful, cr8 tables

    echo 'ozForum successfully created';

  } else {

    echo 'Error creating ozForum';
    
  }
?>
