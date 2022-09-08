<?php
    session_start();
    $pageTitle = 'Category - Page';
    include('partials/initial.php');
    // include('layouts/header.php');

  
    if(isset($_GET['catId'])){
        $catId = $_GET['catId'];

        $numRows = $res->num_rows; 

        if($numRows > 0){
            $row = $res->fetch_assoc();

                echo '<ul class="collection with-header container">
                    <li class="collection-header"><h4>'.$row['category'].'</h4></li>';
    
                    require('../ozForumDbConfig.php');//DB connection

                    $rs1 = $db->query('SELECT articles.*, categories.* FROM articles, categories WHERE catId = categories.id AND catId = '.$catId);
                
                    $nmRws = $rs1->num_rows;

                    if($nmRws > 0){
                        while($rws = $rs1->fetch_assoc()){
                            $title = $rws['title'];
                            $artId = $rws['catId'];
                            // $post = $rws['post'];
                            $cat = $rws['category'];

                            echo'<li class="collection-item">
                                <div class="row">  
                                    <div class="col l9">
                                        <h4>'.$title.'</h4>
                                        <span>'.substr($rws['post'], 0, 150).'</span>
                                    </div>
                                    <div class="col l3">
                                
                                        <div class="row">
                                            <a class="waves-effect waves-light btnColorII btn col s12" href="#comment"><i class="material-icons left">notifications_active</i>Follow Posts</a>
                                        </div>  
                                        <div class="row siders">
                                            <div class="col s12">
                                                <h6> <i class="material-icons left">visibility</i> '.$rws['views'].' Views</h6>
                                            </div>
                                            <div class="col s12">
                                                <h6> <i class="material-icons left">comment</i> 0 Comments</h6>                                                                 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>';
                        }
                    } else {
                        echo 'No articles for this category. Please create one.';
                    }
            echo'</ul>';
            
        } else {
            echo 'No article for this category yet. Please contact the admin.';
        }
    }
    include("footerPage.php");
?>

    


