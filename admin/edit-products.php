
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
{
    header('location:index.php');
}
else{
    $pid=intval($_GET['id']);// product id
    if(isset($_POST['submit']))
    {
        $category=$_POST['category'];

        $productname=mysqli_escape_string($con,$_POST['productName']);
        $modelno=mysqli_escape_string($con,$_POST['modelno']);
        $seotitle=mysqli_escape_string($con,$_POST['seotitle']);
        $metades=mysqli_escape_string($con,$_POST['metades']);
        $altimage=mysqli_escape_string($con,$_POST['altimage']);
        $keyword=mysqli_escape_string($con,$_POST['keyword']);
        $headline=mysqli_escape_string($con,$_POST['headline']);
        $homeproduct=mysqli_escape_string($con,$_POST['homeproduct']);

        $productdescription=mysqli_escape_string($con,base64_encode($_POST['productDescription']));
        $ran=rand();

        $d=date("Y-m-d h:i:sa");
        $sql=mysqli_query($con,"update  products set modelno='$modelno',seotitle='$seotitle',metades='$metades',altimage='$altimage',keyword='$keyword',headline='$headline', category='$category',productName='$productname',productDescription='$productdescription',updationDate='$d',status='$homeproduct' where id='$pid' ");
        $_SESSION['msg']="Product Updated Successfully !!";

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





    <script type="text/javascript">


    </script>

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

    <style>
        .modal{
            display:none;
        }


    </style>
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

                                <?php

                                $query=mysqli_query($con,"select products.*,category.categoryName as catname,category.id as cid from products join category on category.id=products.category where products.id='$pid' ");
                                $cnt=1;
                                while($row=mysqli_fetch_array($query))
                                {



                                    ?>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Category</label>
                                        <div class="controls">
                                            <select name="category" class="span8 tip" onChange="getSubcat(this.value);"  required>
                                                <option value="<?php echo htmlentities($row['cid']);?>"><?php echo htmlentities($row['catname']);?></option>
                                                <?php $query=mysqli_query($con,"select * from category");
                                                while($rw=mysqli_fetch_array($query))
                                                {
                                                    if($row['catname']==$rw['categoryName'])
                                                    {
                                                        continue;
                                                    }
                                                    else{
                                                        ?>

                                                        <option value="<?php echo $rw['id'];?>"><?php echo $rw['categoryName'];?></option>
                                                    <?php }} ?>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Visibility</label>
                                        <div class="controls">
                                            <select name="homeproduct" class="span8 tip"  required>

                                                <?php
                                                if($row['status']==1){
                                                    ?>

                                                    <option value="1">Yes</option>
                                                    <option value="0">No</option>
                                                <?php }else{ ?>


                                                    <option value="0">No</option>
                                                    <option value="1">Yes</option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Product Name</label>
                                        <div class="controls">
                                            <input type="text"    name="productName"  placeholder="Enter Product Name" value="<?php echo htmlentities($row['productName']);?>" class="span8 tip" >
                                        </div>
                                    </div>



                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Product Description</label>
                                        <div class="controls">
<textarea  id="summer" name="productDescription"  placeholder="Enter Product Description" rows="6" class="span8 tip">
<?php echo base64_decode($row['productDescription']);?>
</textarea>
                                        </div>
                                    </div>


                                    <div class="control-group" style="display:none;">
                                        <label class="control-label" for="basicinput">Product Model No</label>
                                        <div class="controls">
                                            <input type="text"  value="<?php echo $row['modelno']; ?>"  name="modelno"  placeholder="Enter Product Comapny Name" class="span8 tip" >
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Product Image1</label>
                                        <div class="controls">
                                            <img src="../productimages/<?php echo htmlentities($pid);?>/<?php echo htmlentities($row['productImage1']);?>" width="200" height="100"> <a href="update-image1.php?id=<?php echo $row['id'];?>">Change Image</a>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Product Image1</label>
                                        <div class="controls">
                                            <img src="../productimages/<?php echo htmlentities($pid);?>/<?php echo htmlentities($row['productImage2']);?>" width="200" height="100"> <a href="update-image2.php?id=<?php echo $row['id'];?>">Change Image</a>
                                        </div>
                                    </div>

                                    <div class="module-head">
                                        <h3>SEO</h3>
                                    </div>
                                    <br/>
                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Seo Title</label>
                                        <div class="controls">
                                            <input type="text"    name="seotitle" value="<?php echo $row['seotitle']; ?>" placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Seo Meta Description</label>
                                        <div class="controls">
                                            <input type="text"    name="metades"  value="<?php echo $row['metades']; ?>" placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Seo Alt Image</label>
                                        <div class="controls">
                                            <input type="text"    name="altimage" value="<?php echo $row['altimage']; ?>" placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Seo Keywords</label>
                                        <div class="controls">
                                            <input type="text"    name="keyword" value="<?php echo $row['keyword']; ?>" placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="basicinput">Heading </label>
                                        <div class="controls">
                                            <input type="text"    name="headline" value="<?php echo $row['headline']; ?>"  placeholder="Enter Product Comapny Name" class="span8 tip" required>
                                        </div>
                                    </div>











                                <?php } ?>
                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" name="submit" class="btn">Update</button>
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