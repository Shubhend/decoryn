<?php
include('include/config.php');

?>

<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->


<html lang="en">
<!--<![endif]-->
<head>
    <!-- Basic Page Needs
      ================================================== -->
    <meta charset="utf-8">

    <?php
    $pid=intval($_GET['pid']);
    $ret=mysqli_query($c,"select * from products where id='$pid'");
    while($row=mysqli_fetch_array($ret))
    {
        $other=$row['productDescription'];
        ?>
        <title><?php echo $row['seotitle']; ?></title>

        <meta name="description" content=" <?php echo $row['metades']; ?>  " />

        <meta name="keywords" content="<?php echo $row['keyword']; ?>  " />

        <meta property="al:web:url" content="https://www.lsrservice.com">

        <meta property="og:title" content="<?php echo $row['seotitle']; ?>" />
        <meta property="og:description" content="<?php echo $row['metades']; ?>" />


        <meta property="og:url" content="<?php $link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
        echo $link; ?>?pid=<?php echo $row['id']; ?>"/>

        <meta property="og:image:secure_url" content="kawaljeetindustries.in" />
        <meta property="og:image:type" content="image/jpeg" />
        <meta property="og:image:width" content="300" />
        <meta property="og:image:height" content="200" />
        <meta property="og:image" content="http://kawaljeetindustries.in/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" />


    <?php  } ?>

    <!-- SEO Meta
      ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="distribution" content="global">
    <meta name="revisit-after" content="2 Days">
    <meta name="robots" content="ALL">
    <meta name="rating" content="8 YEARS">
    <meta name="Language" content="en-us">
    <meta name="GOOGLEBOT" content="NOARCHIVE">
    <!-- Mobile Specific Metas
      ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
      ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/fotorama.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="shortcut icon" href="images/miniicon.png">


</head>
<body  class="product-page">
<div class="se-pre-con"></div>
<div class="main">

    <!-- HEADER START -->
    <?php include('header.php'); ?>
    <!-- HEADER END -->

    <!-- Bread Crumb STRAT -->
    <div class="banner inner-banner1 " style="background: #51a1e6;">
        <div class="container">
            <section class="banner-detail center-xs">
                <h1 class="banner-title">Decoryn</h1>
                <div class="bread-crumb right-side float-none-xs">
                    <ul>
                        <li><a href="index.php">Home</a></li>

                    </ul>
                </div>
            </section>
        </div>
    </div>
    <!-- Bread Crumb END -->

    <!-- CONTAIN START -->
    <section class="pt-70">
        <div class="container">
            <div class="row">

                <div class="col-lg-9">
                    <?php
                    $detail="";
                    $pid=intval($_GET['pid']);

                    $ret=mysqli_query($c,"select * from products where id='$pid'");
                    while($row=mysqli_fetch_array($ret))
                    {
                        $detail=$row['productDescription'];


                        ?>


                        <div class="row">
                            <div class="col-lg-5 col-md-5 mb-xs-30">

                                <div class="fotorama fotorama__active" data-nav="thumbs" data-allowfullscreen="native">
                                    <a href="#"><img src="productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="<?php echo $row['altimage']; ?>"></a>
                                    <a href="#"><img src="productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage2']);?>" alt="<?php echo $row['altimage']; ?>"></a>


                                </div>

                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="product-detail-main">
                                            <div class="product-item-details">
                                                <h1 class="product-item-name"><?php echo $row['productName'];?></h1>
                                                <!--   <div class="rating-summary-block">
                                                     <div title="53%" class="rating-result"> <span style="width:90%"></span> </div>
                                                   </div>  -->




                                                <div class="container">
                                                    <?php echo base64_decode($detail); ?>

                                                </div>


                                                <div class="share-link">
                                                    <label>Share  : </label>
                                                    <div class="social-link">
                                                        <ul class="social-icon">
                                                            <li><a class="facebook" title="Facebook" href="http://www.facebook.com/sharer.php?u=<?php $link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']; echo $link; ?>?pid=<?php echo $pid; ?>"><i class="fa fa-facebook"> </i></a></li>
                                                            <li><a class="twitter" title="Twitter" href="#"><i class="fa fa-twitter"> </i></a></li>
                                                            <li><a class="linkedin" title="Linkedin" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=<?php $link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']; echo $link; ?>?pid=<?php echo $pid; ?>"><i class="fa fa-linkedin"> </i></a></li>
                                                            <li><a class="pinterest" title="whatsapp" href="whatsapp://send?text=<?php $link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']; echo $link; ?>?pid=<?php echo $pid; ?>"><i class="fa fa-whatsapp"> </i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    <?php } ?>





                    <!-- Trigger the modal with a button -->
                    <a href="https://api.whatsapp.com/send?phone=+918448956972&text=I like this product <?php $link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']; echo $link; ?>?pid=<?php echo $pid; ?>" type="button" class="btn btn-info btn-lg" >Enquiry For Product</a>

                </div>


                <style>


                    .phone-number {
                        width:fit-content;
                        font-weight: bold;
                        font-size: 20px;
                        text-align: right;
                        text-transform: uppercase;
                        font-weight: bold;
                        background: #C43832;
                        border-radius: 34px;
                        padding: 1em;
                        position: relative;
                        padding-left: 3.5em;
                        color: white;
                        display: inline-block;

                    }
                    .phone-number--below {
                        display: block;
                        text-align: left;
                        padding-left: 3.5em;
                    }
                    .phone-number:hover {
                        background: #1d71b8;
                    }

                </style>



                <!--
                        <div class="col-lg-3">
                          <div class="brand-logo-pro align-center mb-30">
                            <img src="images/brand5.png" alt="Stylexpo">
                          </div>
                          <div class="sub-banner-block align-center">
                            <img src="images/pro-banner.jpg" alt="Stylexpo">
                          </div>
                        </div>

                        -->

            </div>
        </div>
    </section>




    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Request For Contact</h4>
                </div>
                <div class="modal-body">


                    <section class="" style="background: #ADA996;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10">

                                    <div class="">
                                        <div class="col-12">
                                            <div class="comments-area-main">

                                                <div class="main-form mt-30">

                                                    <form action="" method="post" enctype="multipart/form-data">
                                                        <div class="row mt-30">
                                                            <div class="col-md-4 mb-30">
                                                                <input type="text" placeholder="Name" name="name" required>
                                                            </div>
                                                            <div class="col-md-4 mb-30">
                                                                <input type="text" placeholder="Contact No" name="phone" required>
                                                            </div>
                                                            <div class="col-md-4 mb-30">
                                                                <input type="email" placeholder="Email No" name="email" required>
                                                            </div>
                                                            <div class="col-12 mb-30">
                                                                <textarea cols="30" rows="3"  placeholder="Your Short Detail (50 words)" name="msg" required></textarea>
                                                            </div>
                                                            <div class="col-12 mb-30">
                                                                <input type="file" class="" name="file" id="customFile">

                                                            </div>
                                                            <div class="col-12 mb-sm-30">
                                                                <button class="btn btn-color" name="submit" type="submit">Contact Us</button>
                                                            </div>
                                                            <?php echo $t; ?>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>










    <?php

    $pid=$_GET['pid'];
    if(isset($_POST['savereview'])){
        $email=$_POST['email'];
        $name=$_POST['name'];
        $msg=$_POST['msg'];
        $date=date('yy-m-d');

        $retss=mysqli_query($c,"insert into review values('','$name','$email','$pid','$msg','$date')");




    }


    ?>

    <section class="ptb-70">
        <div class="container">
            <div class="product-detail-tab">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="tabs">
                            <ul class="nav nav-tabs">

                                <li><a class="tab-Product-Tags selected" title="Product-Tags">Review</a></li>

                            </ul>
                        </div>
                        <div id="items">
                            <div class="tab_content">
                                <ul>

                                    <div class="items-Reviews selected">
                                        <div class="comments-area">

                                            <ul class="comment-list mt-30">

                                                <?php

                                                $pid=$_GET['pid'];

                                                $ret=mysqli_query($c,"select * from review where productid='$pid'");
                                                while($row=mysqli_fetch_array($ret))
                                                {



                                                    ?>


                                                    <li>
                                                        <div class="comment-user"> <img src="images/comment-user.jpg" alt="Stylexpo"> </div>

                                                        <div class="comment-detail">
                                                            <div class="user-name"><?php echo $row['name']; ?></div>
                                                            <div class="post-info">
                                                                <ul>
                                                                    <li><?php echo $row['date']; ?></li>

                                                                </ul>
                                                            </div>
                                                            <p><?php echo $row['msg']; ?></p>
                                                        </div>

                                                    </li>
                                                <?php } ?>
                                            </ul>
                                        </div>
                                        <div class="main-form mt-30">
                                            <h4>Leave  comments</h4>
                                            <form method="Post">
                                                <div class="row mt-30">
                                                    <div class="col-md-4 mb-30">
                                                        <input type="text" name="name" placeholder="Name" required>
                                                    </div>
                                                    <div class="col-md-4 mb-30">
                                                        <input type="email" name="email" placeholder="Email" required>
                                                    </div>

                                                    <div class="col-12 mb-30">
                                                        <textarea cols="30" rows="3" name="msg" placeholder="Message" required></textarea>
                                                    </div>
                                                    <div class="col-12 mb-30">
                                                        <button class="btn btn-color" name="savereview" type="submit">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php

    if(isset($_POST['submit'])){
        $email=$_POST['email'];
        $name=$_POST['name'];
        $phone=$_POST['phone'];
        $msg=$_POST['msg'];
        $date=date('Y-m-d');

        $target_dir = "files/";
        $target_file = $target_dir . basename($_FILES["file"]["name"]);


        $supported_image = array('gif','jpg','jpeg','png','pdf','doc');

        $ext1 = strtolower(pathinfo($productimage1, PATHINFO_EXTENSION));


        if(in_array($ext1, $supported_image)){

            move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);
            $filename=mysqli_escape_string($con,$_FILES["file"]["name"]);


        }


        $retss=mysqli_query($c,"insert into contact values('','$name','$phone','$email','$msg','$filename','$date')");

        $t="Thanks For Contact , We will contact You Soon";

    }


    ?>


    <br/>

    <section class="pb-70">
        <div class="container">
            <div class="product-listing">
                <div class="row">
                    <div class="col-12">
                        <div class="heading-part mb-40">
                            <center>
                                <h2 class="main_title heading"><span>Related Products</span></h2>
                            </center>

                        </div>
                    </div>
                </div>
                <style>
                    .med{
                        height:auto;
                        width:100%;
                    }
                    @media (max-width: 600px){
                        .med{
                            width:100%;
                            height:auto;
                        }
                        .item{
                            flex-basis:100% !important;
                        }
                    }

                    .owl-wrapper{
                        width:100% !important;
                        display:flex !important;
                        flex-wrap:wrap !important;



                    }


                </style>
                <div class="pro_ct">
                    <div class="row">
                        <div style="display:flex;flex-wrap:wrap;width:100%;">

                            <?php
                            $rets=mysqli_query($c,"select * from products where id='$pid' && status=1 ");
                            $ro=mysqli_fetch_array($rets);
                            $n=$ro['category'];
                            $na=$ro['productName'];

                            $retss=mysqli_query($c,"select * from products where category='$n'  && status=1  limit 10 ");
                            while($rvw=mysqli_fetch_array($retss))
                            {
                                ?>

                                <div class="item" style="flex-basis:25%;">
                                    <div class="product-item">

                                        <div class="product-image"> <a href="product.php?pid=<?php echo htmlentities($rvw['id']);?>"> <img class="med" src="productimages/<?php echo htmlentities($rvw['id']);?>/<?php echo htmlentities($rvw['productImage1']);?>" alt="Stylexpo"> </a>

                                        </div>
                                        <div class="product-item-details">
                                            <div class="product-item-name"> <a href="product.php?pid=<?php echo $rvw['id']; ?>"><?php echo htmlentities($rvw['productName']);?></a> </div>

                                        </div>
                                    </div>
                                </div>


                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- CONTAINER END -->

    <!-- News Letter Start -->

    <script>
        $(".fotorama__nav__frame").addClass("fotorama__active");

    </script>



    <!-- News Letter End -->

    <!-- FOOTER START -->
    <?php include('footer.php'); ?>
    <!-- FOOTER END -->
</div>
<script src="js/jquery-1.12.3.min.js"></script>
<script src="../../../../cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.downCount.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/fotorama.js"></script>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/custom.js"></script>
<script>

    $(".mobilemenu").attr('onclick','');

</script>
</body>
</html>
