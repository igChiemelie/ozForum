M.AutoInit();//Initiliazie all materialize behaviours

$(".dropdown-trigger").dropdown({
    coverTrigger: false
});

// $('#modal').modal('open');

$('.datepicker').datepicker({
    selectMonths: true,
    selectYear: 1,
    format: 'yyyy-mm-d',
    setDefaultDate: true
});

$('#homeNav').on('dblclick', () => {
    window.location.href = "auth/auth.php";
});
// Swap Login / Registry switch function
$('#toRegister').on('click', function(e){
    e.preventDefault();

    $('.reg-div').removeClass('hide');
    $('.login-div').addClass('hide');
});

$('#toLogin').on('click', function(e){
    e.preventDefault();

    $('.reg-div').addClass('hide');
    $('.login-div').removeClass('hide');
});

// Login section
$('#loginForm').on('submit', function(e) {
    e.preventDefault();
    //TODO

    var uName = $('#uName').val();
    var pass = $('#pass').val();
    var who = $('input[name="who"]:checked').val();
    //initialize error variable to zero
    var err = 0;
    //if usrname field is not blank
    if (uName != "" && pass != "" && who != "") {
        //get value in username field
        err;
    } else { //else 
        //error variable = one
        err = 1;
    }
   
    
    //if error var is = zero 
    if (err == 0){
        // make an ajax call to a php page named adminLoginController.php; pass username, password and adminLoginBtn
        var loginAction = true
        $.ajax({
            type: 'POST',
            url: 'authcontroller.php',
            data: { uName: uName, pass: pass, who: who, loginAction: loginAction},
            success: function(result){
                  
                if(result == 200){
                    
                    window.location.href="../index.php";

                } else if(result == 501) {  //if data == 501

                    M.toast({html: 'Error! Couldn\'t login to our page.', classes: 'errorToast'});

                }
            }
        });
    } 
});

// Registry function

$('#regForm').on('submit', function(e){
    e.preventDefault();

    var fName = $('#fName').val();
    var lName = $('#lName').val();
    var oName = $('#oName').val();
    var email = $('#email').val();
    var securityPass = $('#securityPass').val();
    var dob = $('#dob').val();
    var phone = $('#phone').val();
    var username = $('#username').val();
    var regPass = $('#regPass').val();
    var addr = $('#addr').val();
    var group3 = $('input[name="group3"]').val();

    $err = 0;

    if(fName != "" && lName != "" && oName != "" && email != "" && securityPass != "" && dob != "" && phone != "" && username != "" && regPass != ""  && addr != "" && group3 != ""){
        $err;
    } else {
        $err = 1;
    }

    if($err == 0){
        var regAction = true;

        $.ajax({
            type: 'POST',
            url: '../auth/authRegController.php',
            data: {fName: fName, lName: lName, oName: oName, email: email, securityPass: securityPass, dob: dob, phone: phone, username: username, regPass: regPass, group3: group3, addr: addr, regAction: regAction},
            success: function(result){
                if(result == 200){
                    window.location.href="../index.php";
                } else if(result == 501){
                    M.toast({html: 'Error! Registration failed.', classes: 'errorToast'});
                }
            }
        });
    }
});

// Admin Article Section for create

$('textarea[name="artPosts"]').on('keyup', function(e){
    e.preventDefault();
    var artCat = $('#artCat').val();
    var artTitle = $('#artTitle').val();
    var artPosts = $('#artPosts').val();

    if(artCat != "" && artTitle != "" && artPosts != ""){
        $('#createArtBtn').prop("disabled", false);
    } else {
        $('#createArtBtn').prop('disabled', true);
    }
    $('#createArtModal').modal('open');
});

$('#createArtForm').on('submit', function(e){
    e.preventDefault();

    var artTitle = $('#artTitle').val();
    var artCat = $('#artCat').val();
    var artPosts = $('#artPosts').val();
    var createArtBtn = true;

    $.ajax({
        type: 'POST',
        url: 'artOpera.php',
        data: {artTitle: artTitle, artCat: artCat, artPosts: artPosts, createArtBtn: createArtBtn},
        success: function(result){
            if(result == 200){
                console.log(result);
                M.toast({html: 'Article created successfully!', classes: 'successToast'});
                
                setTimeout(function(){
                    location.reload();
                }, 6000);

            } else if(result == 501){
                
                M.toast({html: 'Error!: Article couldnt be created.', classes: 'errorToast'});
            }
            $('#createArtModal').modal('close');
        }
    });
});

// Admin Article section for update

$('.editArtModal').on('click', function(){
    var artTitle = $(this).attr('data-value');
    var editArt = $(this).attr('data-cat');
    var editArtPosts = $(this).attr('data-post');
    var editArtId = $(this).attr('data-id');

    $('#editArtTitle').val(artTitle);
    $('#editArtCat').val(editArt)
    $('#editArtCat').formSelect();
    $('#editArtPosts').val(editArtPosts);
    $('#editArtId').val(editArtId);

    $('#editArtModal').modal('open');
});

$('textarea[name="editArtPosts"]').on('keyup', function(e){
    e.preventDefault();
    var editArtTitle = $('#editArtTitle').val();
    var editArtCat = $('#editArtCat').val();
    var editArtId = $('#editArtId');
    var editArtPosts = $('#editArtPosts').val();

    if(editArtTitle, editArtCat, editArtId, editArtPosts){
        $('#editArtBtn').prop('disabled', false);
    } else {
        $('#editArtBtn').prop('disabled', true);
    }

});

$('#editArtForm').on('submit', function(e){
    e.preventDefault();

    var editArtTitle = $('#editArtTitle').val();
    var editArtId = $('#editArtId').val();
    var editArtPosts = $('#editArtPosts').val();
    var editArtCat = $('#editArtCat').val();
    var editArtBtn = true;

    $.ajax({
        type: 'POST',
        url: 'artOpera.php',
        data: {editArtTitle: editArtTitle, editArtId: editArtId, editArtPosts: editArtPosts, editArtCat: editArtCat, editArtBtn: editArtBtn},
        success: function(result){
            if(result == 501){
                console.log('here');
                M.toast({html: 'Error!: Article failed to edit.', classes: 'errorToast'});
            } else if(result == 200){
                console.log('here1');
                M.toast({html: 'Article Created Successfully!', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000);
            }
            $('#editArtModal').modal('close');
        }
    });

});

$('.delArtModal').on('click', function(){
    var artTitle = $(this).attr('data-value');
    var artCat= $(this).attr('data-cat');
    var artPosts = $(this).attr('data-post');
    var artId = $(this).attr('data-id');

    $('#deleteArtTitle').html(artTitle);
    $('#deleteArtCat').html(artCat);
    $('#deleteArtPosts').html(artPosts);
    $('#deleteArtId').val(artId);

    $('#deleteArtModal').modal('open');
});

$('#doDeleteArt').on('click', function(){
    // e.preventDefault();

    var artId = $('#deleteArtId').val();

    $.ajax({
        type: 'POST',
        url: 'artOpera.php',
        data: {deleteArtId: artId, deleteArtBtn: true},
        success: function(result){
            if(result == 501){
                M.toast({html: 'Error!: Article couldnt be deleted', classes: 'errorToast'});
            } else if(result == 200){
                M.toast({html: 'Article deleted successfully!', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000);
            }
        }
    });
})
// Admin Category section

checkCatExistence('catName', 'createCatForm', 'createCatBtn');
checkCatExistence('editCatName', 'editCatForm', 'editCatBtn');


function checkCatExistence(inputFieldId, formId, btn){
    $('#'+inputFieldId).on('keyup', function(){
        var catValue = $(this).val();
        
        if(catValue.length > 0){
            $.ajax({
                type: 'POST',
                url: 'adminCatOperations.php',
                data: { catValue: catValue, checkIfCatExists: true},
                success: function(result){
                    if(result != 501){
                        $('#'+formId+' .collection').html('<li class="collection-item yellow accent-2">Please ensure the category you want to create does not already exist. Check the list below:</li>');
                        result = eval(result);
                        var reslen = result.length, a;
        
                        for(a = 0; a < reslen; a++){
                            var cat  = result[a]['category'];    
                            $('#'+formId+' .collection').append('<li class="collection-item">'+cat+'</li>');
                            $('#'+formId+' .collection').removeClass('hide');
                        }
                        
                    } else {
                        $('#'+btn).prop("disabled", false);
                        $('#'+formId+' .collection').addClass('hide');
                    }
                }
            })
        } else {
            $('#'+btn).prop("disabled", true);
            $('#'+formId+' .collection').addClass('hide');
        }   
    });
}

// Create Category Section

$('input[name="catName"]').on('keyup', function(e){
    e.preventDefault();
    var catName = $('#catName').val();

    if(catName != ""){
        $('#createCatBtn').prop("disabled", false);
    } else {
        $('#createCatBtn').prop('disabled', true);
    }
    $('#createCatModal').modal('open');
});

$('#createCatForm').on('submit', function(e){
    e.preventDefault();
    var catName = $('#catName').val();
    var createCatBtn = true;
    
    $.ajax({
        type: 'POST',
        url: 'adminCatOperations.php',
        data: { catName: catName, createCatBtn: createCatBtn},
        success: function(result){
            if(result == 501){
                M.toast({html: 'Error! Category couldnt be created.', classes: 'errorToast'});
            } else if(result == 200) {                
                M.toast({html: 'Category created successfully', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();//reload current page
                }, 3000);
            }
            $('#createCatModal').modal('close');
        }
    });
});

// Edit Category Section
$('.editCatModal').on('click', function(){
    
    var catName = $(this).attr('data-value');
    var catId = $(this).attr('data-id');

    $('#editCatName').val(catName);
    $('#editCatId').val(catId);
    
    $('#editCatModal').modal('open');
});

$('input[name="editCatName"]').on('keyup', function(){
    var editCatName = $('#editCatName').val();

    if(editCatName != ""){
        $('#editCatBtn').prop('disabled', false);
    } else {
        $('#editCatBtn').prop('disabled', true);
    }
    
});


$('#editCatForm').on('submit', function(e){
    e.preventDefault();
    
    var catName = $('#editCatName').val();
    var catId = $('#editCatId').val();
    var editCatBtn = true;
    
    $.ajax({
        type: 'POST',
        url: 'adminCatOperations.php',
        data: {editCatName: catName, editCatId: catId, editCatBtn: editCatBtn},
        success: function(result){
            if(result == 200){
                M.toast({html: 'Category editted successfully', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000)
            } else if(result == 501) {
                M.toast({html: 'Category could not be editted', classes: 'errorToast'});

            }
            $('#editCatModal').modal('close');
        }
    });
});

$('.delModal').on('click', function(){
    var catName = $(this).attr('data-value');
    var catId = $(this).attr('data-id');

    $('#deleteCatName').html(catName);
    $('#deleteCatId').val(catId);

    $('#deleteCatModal').modal('open');

});

$('#doDeleteCat').on('click', function(){
    var deleteCat = $('#deleteCatId').val();

    $.ajax({
        type: 'POST',
        url: 'adminCatOperations.php',
        data: {deleteCatId: deleteCat, deleteCatBtn: true},
        success: function(result){
            if(result == 200){
                M.toast({html: 'Category deleted successfully!', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000);
            } else if(result == 501){
                M.toast({html: 'Error!: Category could not be deleted.', classes: 'errorToast'});
            }
            $('#deleteCatModal').modal('close');
        }
    });
});


// Users Edit section

$('.usersModal').on('click', function(){
    var usersName = $(this).attr('data-user');
    var usersName1 = $(this).attr('data-user1');
    var usersId = $(this).attr('data-id');

    $('#editUsersName').val(usersName);
    $('#editUsersName1').val(usersName1);
    $('#editUsersId').val(usersId);

    $('#editUsersModal').modal('open');
});

$('#editUsersName').on('keyup', function(e){
    e.preventDefault();

    var editUsersName = $('#editUsersName').val();
    var editUsersName1 = $('#editUsersName1').val();

    if(editUsersName != "" && editUsersName1){
        $('#editUsersBtn').prop('disabled', false);
    } else {
        $('#editUsersBtn').prop('disabled', true);
    }
});

$('#editUsersForm').on('submit', function(e){
    e.preventDefault();

    var usersName = $('#editUsersName').val();
    var usersName1 = $('#editUsersName1').val();
    var userId = $('#editUsersId').val();
    var editUsersBtn = true;

    $.ajax({
        type: 'POST',
        url: 'usersOperations.php',
        data: {editUsersName: usersName, editUsersName1: usersName1, editUsersId: userId, editUsersBtn: editUsersBtn},
        success: function(result){
            if(result == 200){
                M.toast({html: 'User Edited successfully', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000);
            } else if(result == 501){
                M.toast({html: 'Error!: User update failed to Edit.', classes: 'errorToast'});
            }
            $('#editUsersModal').modal('close');
        }
    });
});

$('.delUserModal').on('click', function(){
    var deleteUser = $(this).attr('data-user');
    var deleteId = $(this).attr('data-id');

    $('#deleteUsersName').html(deleteUser);
    $('#deleteUsersId').val(deleteId);

    $('#deleteUsersModal').modal('open');
});

$('#doDeleteUser').on('click', function(){
    var deleteUser = $('#deleteUsersId').val();

    $.ajax({
        type: 'POST',
        url: 'usersOperations.php',
        data: {deleteUsersId: deleteUser, doDeleteUser: true},
        success: function(result){
            if(result == 200){
                M.toast({html: 'User deleted successfully!', classes: 'successToast'});

                setTimeout(function(){
                    location.reload();
                }, 3000);
            } else if(result == 501){
                M.toast({html: 'Error!: User could not be deleted.', classes: 'errorToast'});
            }
            $('#deleteUsersModal').modal('close');
        }
    });
});


//Visitors
$('#addComment').on('keyup', function(e){
    // e.preventDefault();
    var comLen = $('#addComment').val().length;
    if(e.keyCode === 13){
        e.preventDefault();
        addComment();
    } else {
        if(comLen > 0){
            $('button[name="addCommentBtn"]').prop('disabled', false);
        } else {
            $('button[name="addCommentBtn"]').prop('disabled', true);
        }
    }
    
});

$('#makeCommentForm').on('submit', function(e){
    e.preventDefault();

    addComment();
});

let addComment = () => {
    var com = $('#addComment').val().trim();
    var postId = $('input[name="artId"]').val().trim();

    $.ajax({
        type: 'POST',
        url: 'commentOp.php',
        data: {comment: com, postId: postId, addCommentBtn: true},
        success: function(res){
            if(res == 200){
                location.reload();
            } else if(res == 501){
                 //TODO: Toast error
            } else {
                //TODO: Toast illegal operation
            }
        },
        error: function(){

        }
    });
}