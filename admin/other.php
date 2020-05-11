
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
{
    header('location:index.php');
}
else{
    date_default_timezone_set('Asia/Kolkata');// change according timezone
    $currentTime = date( 'd-m-Y h:i:s A', time () );


    if(isset($_POST['submit']))
    {
        $category=mysqli_escape_string($con,$_POST['category']);
        $description=mysqli_escape_string($con,$_POST['description']);

        $filename=mysqli_escape_string($con,rand(12,200).$_FILES["img"]["name"]);
        $supported_image = array('gif','jpg','jpeg','png');

        $ext = strtolower(pathinfo($filename, PATHINFO_EXTENSION));

        if(in_array($ext, $supported_image) && ! $_FILES["img"]["name"]==''){

            if(move_uploaded_file($_FILES["img"]["tmp_name"],"../setting/".$filename)){


                $sql=mysqli_query($con,"update setting set data='$filename' where name='header_img'");

                $sql=mysqli_query($con,"update setting set data='$description' where name='header_text'");

                $_SESSION['msg']=" Updated Data !!";


            }else{

                $_SESSION['msg']="try again !!";

            }


        }else{
            $sql=mysqli_query($con,"update setting set data='$description' where name='header_text'");

            $_SESSION['msg']="Updated !!";
        }



    }
    ?>
    <!DOCTYPE html>
    <html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin| Category</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<?php include('include/header.php');?>

<div class="wrapper">
    <div class="container">
        <div class="row">
            <?php include('include/sidebar.php');?>
            <div class="span9">
                <div class="content">

                    <div class="module">
                        <div class="module-head">
                            <h3>Settings</h3>
                        </div>
                        <div class="module-body">

                            <?php if(isset($_POST['submit']))
                            {?>
                                <div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
                                </div>
                            <?php } ?>


                            <?php if(isset($_GET['del']))
                            {?>
                                <div class="alert alert-error">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
                                </div>
                            <?php } ?>

                            <br />

                            <form class="form-horizontal row-fluid" name="Category" method="post" enctype="multipart/form-data" >



                                <?php
                                $query=mysqli_query($con,"select * from setting where name='header_text'");
                                $row=mysqli_fetch_array($query);

                                ?>
                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Description</label>
                                    <div class="controls">
                                        <textarea class="span8" name="description" rows="5"><?php echo $row['data']; ?></textarea>
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Image</label>
                                    <div class="controls">
                                        <input type="file" name="img" id="img" value="" class="span8 tip" >
                                    </div>
                                </div>



                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Create</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                    <div class="module">
                        <div class="module-head">

                        </div>
                        <div class="module-body table">

                        </div>
                    </div>



                </div><!--/.content-->
            </div><!--/.span9-->
        </div>
    </div><!--/.container-->
</div><!--/.wrapper-->

<?php include('include/footer.php');?>

<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass("btn-group datatable-pagination");
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    } );
</script>
</body>
<?php } ?>