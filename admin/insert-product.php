
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
{
    header('location:index.php');
}
else{

    if(isset($_POST['submit']))
    {
        $category=mysqli_escape_string($con,$_POST['category']);

        $productname=mysqli_escape_string($con,$_POST['productName']);
        $modelno=mysqli_escape_string($con,$_POST['modelno']);
        $seotitle=mysqli_escape_string($con,$_POST['seotitle']);
        $metades=mysqli_escape_string($con,$_POST['metades']);
        $altimage=mysqli_escape_string($con,$_POST['altimage']);
        $keyword=mysqli_escape_string($con,$_POST['keyword']);
        $headline=mysqli_escape_string($con,$_POST['headline']);
        $homeproduct=mysqli_escape_string($con,$_POST['homeproduct']);

        $productdescription=base64_encode($_POST['productDescription']);
        $ran=rand(20,200);
        $productimage1=$ran.mysqli_escape_string($con,$_FILES["productimage1"]["name"]);

        $ran2=rand(20,200);
        $productimage2=$ran2.mysqli_escape_string($con,$_FILES["productimage2"]["name"]);

        $d=date("Y-m-d");



        $supported_image = array('gif','jpg','jpeg','png');

        $ext1 = strtolower(pathinfo($productimage1, PATHINFO_EXTENSION));
        $ext2 = strtolower(pathinfo($productimage2, PATHINFO_EXTENSION));

        if(!in_array($ext1, $supported_image)){
            $_SESSION['msg']="Wrong Format Of File !!";


        }else{


            $sql=mysqli_query($con,"INSERT INTO products VALUES(NULL,'$category','$productname','$productdescription','$productimage1','$productimage2','$modelno','$seotitle','$metades','$altimage','$keyword','$headline','$homeproduct','$d','','$homeproduct')");

            $productid=$con->insert_id;
            $dir="../productimages/".$productid;
            if(! file_exists($dir)){
                mkdir($dir);// directory creation for product images

            }


            if(move_uploaded_file($_FILES["productimage1"]["tmp_name"],"../productimages/".$productid."/".$productimage1)){


                // move_uploaded_file($_FILES["productimage2"]["tmp_name"],"../productimages/$productid/".$productimage2);



                $_SESSION['msg']="Product Inserted Successfully !!";

            }else{
                $_SESSION['msg']="Try Again !!";
            }


        }

    }


    ?>
    <!DOCTYPE html>
    <html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin| Insert Product</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>



    <style>
        .modal{
            display:none;
        }


    </style>
    <script>
        function getSubcat(val) {
            $.ajax({
                type: "POST",
                url: "get_subcat.php",
                data:'cat_id='+val,
                success: function(data){
                    $("#subcategory").html(data);
                }
            });
        }
        function selectCountry(val) {
            $("#search-box").val(val);
            $("#suggesstion-box").hide();
        }
    </script>


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
                            <h3>Insert Product</h3>
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

                            <form class="form-horizontal row-fluid" name="insertproduct" method="post" enctype="multipart/form-data">

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Category</label>
                                    <div class="controls">
                                        <select name="category" class="span8 tip" onChange="getSubcat(this.value);"  required>
                                            <option value="">Select Category</option>
                                            <?php $query=mysqli_query($con,"select * from category");
                                            while($row=mysqli_fetch_array($query))
                                            {?>

                                                <option value="<?php echo $row['id'];?>"><?php echo $row['categoryName'];?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label" for="basicinput">visibility</label>
                                    <div class="controls">
                                        <select name="homeproduct" class="span8 tip"  required>
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Product Name</label>
                                    <div class="controls">
                                        <input type="text"    name="productName"  placeholder="Enter Product Name" class="span8 tip" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Product Company</label>
                                    <div class="controls">
                                        <input type="text"    name="productCompany"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Product Description</label>
                                    <div class="controls">
<textarea id="summer" name="productDescription"  placeholder="Enter Product Description" rows="6" class="span8 tip">
</textarea>
                                    </div>
                                </div>


                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="basicinput">Product Model No</label>
                                    <div class="controls">
                                        <input type="text"    name="modelno"  placeholder="Enter Product Comapny Name" class="span8 tip" >
                                    </div>
                                </div>




                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Product Image1</label>
                                    <div class="controls">
                                        <input type="file" name="productimage1" id="productimage1" value="" class="span8 tip" required>
                                    </div>
                                </div>
                                <br/>


                                <div class="control-group" style="display:none;">
                                    <label class="control-label" for="basicinput">Product Image2</label>
                                    <div class="controls">
                                        <input type="file" name="productimage2" id="productimage2" value="" class="span8 tip" >
                                    </div>
                                </div>
                                <br/>


                                <div class="module-head">
                                    <h3>SEO</h3>
                                </div>
                                <br/>
                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Seo Title</label>
                                    <div class="controls">
                                        <input type="text"    name="seotitle"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Seo Meta Description</label>
                                    <div class="controls">
                                        <input type="text"    name="metades"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Seo Alt Image</label>
                                    <div class="controls">
                                        <input type="text"    name="altimage"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Seo Keywords</label>
                                    <div class="controls">
                                        <input type="text"    name="keyword"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="basicinput">Heading </label>
                                    <div class="controls">
                                        <input type="text"    name="headline"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                    </div>
                                </div>










                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Insert</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>





                </div><!--/.content-->
            </div><!--/.span9-->
        </div>
    </div><!--/.container-->
</div><!--/.wrapper-->

<?php include('include/footer.php');?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<script>
    $(document).ready(function(){
        $('#summer').summernote();

    });

</script>
</body>
<?php } ?>