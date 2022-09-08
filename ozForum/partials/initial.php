<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $pageTitle ?></title>
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="fonts/material-icons.css">
    <link rel="stylesheet" href="css/ozForum.css">
    <style>
        .collection.with-header.container{
            margin-bottom: 10vh;
            margin-top: 10vh;
        }
    </style>
</head>
<?php
    if(isset($_GET['catId'])){
        $catId = $_GET['catId'];
        
    
        require('../ozForumDbConfig.php');

        //get categories
        $res = $db->query('SELECT categories.*, articles.catId FROM categories, articles WHERE categories.id = "'.$catId.'" AND articles.catId = categories.id ORDER BY category ASC');

    }
?>
<body>
    <div class="navbar-fixed">
        
        <ul id="dropdown2" class="dropdown-content">
            <li><a href="logout.php">Logout</a></li>
        </ul>

        
        <!-- Dropdown Structure -->
        <ul id='dropdown1' class='dropdown-content'>
             <?php
                require('../ozForumDbConfig.php');
                
                $res = $db->query('SELECT * FROM categories');
                $numRws = $res->num_rows;
                if($numRws > 0){
                    while ($row = $res->fetch_assoc()) {
                        echo '<li><a href="allCategories.php?catId='.$row['id'].'">'.$row['category'].'</a></li>';
                    }
                }else{
                    echo '<li><a href="#"><small style="text-align:center"><i>No Category. Contact admin</i></small></a></li>';
                }
             ?>
        </ul>

        <nav id="homeNav">
            <div class="nav-wrapper green">
                <a href="index.php" class="brand-logo">OZ FORUM</a>
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