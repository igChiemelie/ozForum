<?php
    session_start();
    $pageTitle = 'OZ Forum - The most exciting source of information';
    include('layouts/header.php');     
?>
    
    <div id="home">
        <div class="homeCover">
            <div class="container">
                <div class="row whiteTxt centerTxt">
                    <h1>OZFORUM. <br><small>Lets share your thoughts &amp; Ideas.</small></h1>
                </div>

                <?php
                
                    $postId = $_GET['id'];

                    $res1 = $db->query('SELECT articles.*, CONCAT(users.fName," ", users.lName) as names, categories.category FROM articles, users, categories WHERE articles.id = '.$postId.' AND articles.catId = categories.id AND articles.userId = users.id');
                    $numRw1 = $res1->num_rows;

                    if($numRw1 > 0){
                        require('includes/functions.php');
                        $rw1 = $res1->fetch_assoc();
                        echo    '<div class="row" id="breadCrumb">';
                        echo        '<nav><div class="nav-wrapper"><div class="col s12">
                                        <a href="index.php" class="breadcrumb">Home</a>
                                        <a href="category.php?id='.$rw1['catId'].'" class="breadcrumb">'.$rw1['category'].'</a>
                                        <a href="#!" class="breadcrumb">'.$rw1['title'].'</a>
                                    </div></div></nav>';
                        echo    '</div>';

                echo    '<div class="pad whiteBackground">
                            <div class="row">
                            
                                <div class="col s9">
                                    <div class="col s12">
                                        <div class="left grey-text">'.$rw1['names'].'</div>
                                        <div class="right  grey-text">'.time_elapsed_string($rw1['datePosted']).'</div>
                                    </div>
                                    <div class="col s12">
                                        <h4>'.$rw1['title'].'</h4>
                                    </div>
                                    <div class="col s12">
                                        <p>'.$rw1['post'].'</p>
                                    </div>

                                    <div class="row">
                                        <div class="col s12">
                                            <h5 id="comments">Comments</h5>
                                        </div>';
                                        if(isset($_SESSION['loggedIn'])){
                                            echo '<div class="makeComment col s12">
                                                    <form id="makeCommentForm">
                                                        <div class="row">
                                                            <div class="input-field col s10">
                                                                <textarea class="materialize-textarea" id="addComment" placeholder="Add Comment" name="addComment" class="validate" required></textarea>
                                                                <label for="addComment">Add Comment</label>
                                                            </div>
                                                            <div class="input-field col s2">
                                                                <button class="btn waves-effect waves-light" type="submit" name="addCommentBtn" disabled>
                                                                    <i class="material-icons">add</i>
                                                                </button>
                                                            </div>
                                                            <input type="hidden" value="'.$postId.'" name="artId"/>
                                                        </div>
                                                    </form>
                                                </div>';
                                        } else {
                                            echo '<div class="col s12 center-align">
                                                    <i>To make comment please <a href="auth/auth.php">Login</a></i>
                                                </div>';
                                        }
                                        
                                        echo '<div class="showComments col s12">
                                            <h6>All Comments</h6>';
                                            $res3 = $db->query('SELECT comments.*, CONCAT(users.fName," ", users.lName) as names FROM comments, users WHERE articlesId = '.$postId.' AND comments.userId = users.id ORDER BY dateCommented DESC');
                                            $numRow3 = $res3->num_rows;
                                            echo '<table class="striped" id="commentTable">';
                                            if($numRow3 > 0){
                                                $a = 1;
                                                while($rw5 = $res3->fetch_assoc()){
                                                    echo    '<tr>
                                                                <td>
                                                                    <div class="col s12">
                                                                        <div class="left grey-text"><small>'.$rw5['names'].'</small></div>
                                                                        <div class="right  grey-text"><small>'.time_elapsed_string($rw5['dateCommented']).'</small></div>
                                                                    </div>
                                                                    <div class="col s12">
                                                                        '.$rw5['comment'].'
                                                                    </div>
                                                                </td>
                                                            </tr>';
                                                    $a++;
                                                }
                                            } else {
                                                echo'<tr>No comment for this article</tr>';
                                            }
                                            echo '</table>';
                                        echo'</div>
                                    </div>
                                </div>

                                <div class="col s3">
                                    <div class="row">
                                        <a class="waves-effect waves-light btnColor btn col s12" href="#comments">Comment</a>
                                    </div>
                                    <div class="row">
                                        <a class="waves-effect waves-light btnColorII btn col s12" href="#comment"><i class="material-icons left">notifications_active</i>Follow Posts</a>
                                    </div>  
                                    <div class="row siders">
                                        <div class="col s12">
                                            <h6> <i class="material-icons left">visibility</i> '.$rw1['views'].' Views</h6>
                                        </div>
                                        <div class="col s12">
                                            <h6> <i class="material-icons left">comment</i> 0 Comments</h6>                                                                 
                                        </div>
                                    </div>
                                    <div class="row siders">
                                        <div class="col s12">
                                            <h6>Related Posts</h6>
                                        </div>';
                                        $res2 = $db->query('SELECT id, title FROM articles WHERE catId = '.$rw1['catId'].' AND id <> '.$postId.' ORDER BY datePosted DESC LIMIT 2');
                                        $numRw2 = $res2->num_rows;
                                        if($numRw2 > 0){
                                            while($rw2 = $res2->fetch_assoc()){
                                                echo    '<div class="col s12">
                                                            <a href="singleArticle.php?id='.$rw2['id'].'">'.$rw2['title'].'</a>
                                                        </div>';
                                            }
                                        } else {
                                            echo    '<div class="col s12">
                                                        <p class="centerTxt"><small><i>No related posts.</i></small></p
                                                    </div>';
                                        }
                                    echo'</div>
                                    <div class="row siders">
                                        <div class="col s12">
                                            <h6>Categories</h6>
                                        </div>';
                                        mysqli_data_seek($res, 0) ;
                                        $numRows = $res->num_rows;
                                        if($numRows > 0){
                                            $a = 0;
                                            while($rw4 = $res->fetch_assoc()){
                                                if($a < 5){
                                                    echo    '<div class="col s12">
                                                            <a href="singleArticle.php?id='.$rw4['id'].'">'.$rw4['category'].'</a>
                                                        </div>';
                                                } else {
                                                    //TODO: stop while loop
                                                }    
                                                $a++;                                                    
                                            }
                                        } else {
                                            echo    '<div class="col s12">
                                                        <p class="centerTxt"><small><i>No related posts.</i></small></p>
                                                    </div>';
                                        }
                                    echo'</div>
                                </div>
                            </div>
                            
                        </div>';
            }
                ?>
                    </div>
                    
                </div>
            </div>            
        </div>
        
    </div>
<?php
    $rs = $db->query('UPDATE articles SET views = views + 1 WHERE id = '.$postId);
    //$affected = $db->affected_rows();

    include('layouts/footer.php');
    // include('footerPage.php');
?>