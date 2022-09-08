<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $pageTitle ?></title>
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="fonts/material-icons.css">
    <link rel="stylesheet" href="css/ozForum.css">
</head>
<?php
    //require dbconnection file
    require('../ozForumDbConfig.php');

    //get categories
    $res = $db->query('SELECT * FROM categories ORDER BY category ASC');
    $numRows = $res->num_rows; 
?>
<body>
    <div class="navbar-fixed">
        
        <ul id="dropdown1" class="dropdown-content">
            <?php
                if($numRows > 0){
                    while($rw = $res->fetch_assoc()){
                        echo '<li><a href="allCategories.php?catId='.$rw['id'].'">'.$rw['category'].'</a></li>';
                    }
                } else {
                    echo '<li><a href="#"><small><i>No Category. Contact admin</i></small></a></li>';
                }
            ?>
        </ul>
        <ul id="dropdown2" class="dropdown-content">
            <li><a href="logout.php">Logout</a></li>
        </ul>
        <nav id="homeNav">
            <div class="nav-wrapper green">
                <a href="#!" class="brand-logo">OZ FORUM</a>
                <ul class="right hide-on-med-and-down">
                    <li>
                        <a class="dropdown-trigger" href="#!" data-target="dropdown1">
                            Categories
                            <i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
                    <?php
                        // echo $_SESSION['userType'];
                        if(isset($_SESSION['loggedIn'])){
                            if(isset($_SESSION['userType'])){
                                if($_SESSION['userType']== 'Admin'){
                                    echo '<li><a href="admin/adminDash.php">Settings</a></li>';
                                    
                                }
                                echo '<li><a href="#" class="dropdown-trigger" data-target="dropdown2">'.$_SESSION['fName'].'<i class="material-icons right">arrow_drop_down</i></a></li>';
                            } else {
                                echo '<li><a href="auth/auth.php">Login</a></li>';
                            }
                        }  else {
                            echo '<li><a href="auth/auth.php">Login</a></li>';
                        }
                    ?>
                </ul>
            </div>
        </nav>
    </div>
    