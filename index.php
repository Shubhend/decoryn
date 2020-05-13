<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <!-- Basic Page Needs
      ================================================== -->
    <meta charset="utf-8">
    <title>Decoryn </title>
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
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'><link rel="stylesheet" href="./style.css">
    <link rel="shortcut icon" href="images/miniicon.png">


</head>
<body class="homepage">

<div id="newslater-popup" class="mfp-hide white-popup-block open align-center">
    <div class="nl-popup-main">
        <div class="nl-popup-inner">
            <div class="newsletter-inner">
                <span>Sign up & get 10% off</span>
                <h2 class="main_title">Subscribe Emails</h2>
                <form>
                    <input type="email" placeholder="Email Here...">
                    <button class="btn-black" title="Subscribe">Subscribe</button>
                </form>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
        </div>
    </div>
</div>
<div class="main">

    <!-- HEADER START -->
    <?php include('header.php'); ?>
    <!-- HEADER END -->
    <style>
        .med{
            height:320px;
            width:100%;
        }

    </style>
    <!-- BANNER STRAT -->

    <style>
        .fotorama__nav__frame{
            color:black;

        }
        .st{

            width: 3230px;
            left: 0px;
            display: block;

            -webkit-animation: slide 0.5s forwards;
            -webkit-animation-delay: 2s;
            animation: slide 0.5s forwards;
            animation-delay: 2s;

        }


        @-webkit-keyframes slide {
            100% { left: 0; }
        }

        @keyframes slide {
            100% { left: 0; }
        }
    </style>



    <style>
        .image-clip{
            background: transparent;

            width: auto;
            height: auto;
            text-align: center;


            margin: auto;

            font-family: 'Pacifico', Arial;


            animation:
                    infinite alternate ease-in-out,
                    textColor 5s infinite alternate ease-in-out;


        }
        @keyframes popCorner {
            100% {
                box-shadow: inset 0 -5px 0 0  white;
            }
        }

        @keyframes textColor {
            0% {
                color: grey;
            }
            25% {
                color: gray;
            }
            50% {
                color: white;
            }
            75% {
                color: white;
            }
            100% {
                color: black            }
    </style>

    <script>
        function sho(id){
            $("#first").removeClass('active');
            $("#second").removeClass('active');
            $("#third").removeClass('active');

            $(id).addClass('active');

        }


    </script>


    <?php
    $queryset=mysqli_query($c,"select * from setting where name='header_text'");
    $rowset=mysqli_fetch_array($queryset);
    $queryset2=mysqli_query($c,"select * from setting where name='header_img'");
    $rowset2=mysqli_fetch_array($queryset2);

    if(file_exists('setting/'.$rowset2['data'])){
        $src='setting/'.$rowset2['data'];
    }else{
        $src='banner2.png';
    }

    ?>


    <section class="" style="margin-top:-21px;">


        <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false" >

            <!-- Indicators -->


            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="<?php echo $src; ?>" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left" id="settop" style="top:-350px;">
                                <h1  data-animation="animated zoomInRight">
                                    <p class="image-clip">  <?php echo $rowset['data']; ?>

                                    </p>
                                </h1>
                                <p data-animation="animated fadeInLeft"> </p>


                            </div>
                        </div>
                    </div>
                </div>



                <!-- End of Slide -->

                <!-- Third Slide -->



            </div><!-- End of Wrapper For Slides -->



        </div>






    </section>


    <!-- BANNER END
      <section class="pt-70">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class=" small-banner small-banner1">

                <a href="newaddition.php">

                  <img style="height:164px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbPnS8STeLlh6wUcXKqWt09n6XAQg_b_d5fBE-jphMgWiaxlmp" alt="Stylexpo">
                   <p class="inner" >New Additions</p>
                </a>
              </div>

            </div>
            <div class="col-lg-6 mt-sm-30">
              <div class="small-banner small-banner2">
                 <a href="#">

                  <img style="height:164px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5to7gcSE3xT2u0OMpBVVjfCWiXVbwXtC7jiGOxCUL6v5Dbhtg" alt="Stylexpo">
                   <p class="inner" >Catalog</p>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
    <!-- CONTAIN START -->

    <style>
        .card:hover{
            filter:brightness(0.7);


        }

        #cathover{
            display:inline;
        }
    </style>
    <!--  New arrivals Products Slider Block End  -->

    <!-- Top Categories Start-->



















    <section class="">
        <div class="top-cate-bg ptb-70">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="heading-part mb-30 mb-xs-15">
                            <center>
                                <h2 class=" heading"><span>Our Categories</span></h2>
                            </center>
                        </div>
                    </div>
                </div>




                <div class="row" id="cathover">


                    <?php

                    $retr=mysqli_query($c,"select * from category");
                    while ($rowr=mysqli_fetch_array($retr))
                    {
                        $ui=htmlentities($rowr['categoryName']);



                        ?>




                        <div class="item">
                            <a href="shop.php?other=cat&&cat=<?php echo $rowr['categoryName']; ?>">
                                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                                    <div class="card">
                                        <img class="card-img" src="catimage/<?php echo htmlentities($rowr['img']);?>" >

                                        <div class="cate-detail"><center>

                                                <span><?php echo $rowr['categoryName'];?></span>
                                            </center>
                                        </div>

                                    </div>
                                </div>
                            </a>

                        </div>



                    <?php } ?>

                </div>
            </div>





        </div>

</div>
</section>
<!-- Top Categories End-->


<div class="aboutus-section" style="
padding:15px;">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="aboutus">
                    <h2 class="aboutus-title">About Us</h2>
                    <p class="aboutus-text">Established in the year 2004, Here at Decoryn, we are suppliers of Hotel Equipments and catering Products for restaurants, Banquet, halls, Bars and club etc.
                        .</p>



                    <a class="aboutus-more btn btn-primary" href="aboutus.php">read more</a>



                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="aboutus-banner">
                    <!--     <img src="https://www.benzoville.com/images/product/small/29128-2.png" alt="">  -->
                </div>
            </div>
            <div class="col-md-5 col-sm-6 col-xs-12">
                <div class="feature">
                    <div class="feature-box">
                        <div class="clearfix">
                            <div class="iconset">

                            </div>
                            <h3><b>Mr. Jaspreet Singh, who has immense experience in this industry</b></h3><br/>
                            <div class="feature-content">
                                <h4>RAW MATERIAL USED</h4>
                                <p> Our organization is committed to providing premium quality tableware, barware, cutlery, gastronomic pans, chafing dishes at industry leading prices</p>
                            </div>
                        </div>
                    </div>
                    <div class="feature-box">
                        <div class="clearfix">
                            <div class="iconset">

                            </div>
                            <div class="feature-content">
                                <h4>CUSTOMIZATION</h4>
                                <p>we operate under Mr. Jaspreet Singh, who has immense experience in this industry. We are establishing a large client in the domestic market.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


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

    $ext1 = strtolower(pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION));


    if(in_array($ext1, $supported_image)){
        move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);
        $filename=mysqli_escape_string($con,$_FILES["file"]["name"]);


    }

    $retss=mysqli_query($c,"insert into contact values('','$name','$phone','$email','$msg','$filename','$date')");

    $t="Thanks For Contact , We will contact You Soon";

}


?>

<section class="ptb-70" id="contact" style="background: #ADA996;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">

                <div class="row">
                    <div class="col-12">
                        <div class="comments-area-main">

                            <div class="main-form mt-30">
                                <h4>Request For Contact</h4>
                                <form action="" method="post" enctype="multipart/form-data">
                                    <div class="row mt-30">
                                        <div class="col-md-4 mb-30">
                                            <input type="text" placeholder="Name" name="name" required>
                                        </div>
                                        <div class="col-md-4 mb-30">
                                            <input type="text" placeholder="Contact No" name="phone" required>
                                        </div>
                                        <div class="col-md-4 mb-30">
                                            <input type="email" placeholder="Email" name="email" required>
                                        </div>
                                        <div class="col-12 mb-30">
                                            <textarea cols="30" rows="3"  placeholder="Describe Your Interest (50 words)" name="msg" required></textarea>
                                        </div>
                                        <div class="col-12 mb-30">
                                            <input type="file"  placeholder="File" name="file" id="customFile">

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

<br/>



<style>
    .containerpost {
        position: relative;
        width: 50%;
    }

    .image {
        display: block;
        width: 100%;
        height: auto;
    }

    .overlay {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        background-color: #008CBA;
        overflow: hidden;
        width: 0;
        height: 100%;
        transition: .5s ease;
    }

    .containerpost:hover .overlay {
        width: 100%;
    }

    .text {
        color: white;
        font-size: 20px;
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        white-space: nowrap;
    }
</style>






<!-- Brand logo block Start  -->

<!-- Brand logo block End  -->
<!-- CONTAINER END -->

<!-- News Letter Start -->
<!-- <section>
   <div class="newsletter">
     <div class="container">
       <div class="newsletter-inner center-sm">
         <div class="row">
           <div class=" col-xl-10 col-md-12 push-xl-1">
             <div class="newsletter-bg">
               <div class="row">
                 <div class="col-lg-5">
                   <div class="newsletter-title">
                     <h2 class="main_title">Subscribe to our newsletter</h2>
                     <div class="sub-title">Sign up for newsletter and Get upto 50% off</div>
                   </div>
                 </div>
                 <div class="col-lg-7">
                   <form>
                     <div class="newsletter-box">
                       <input type="email" placeholder="Email Here...">
                       <button title="Subscribe" class="btn-color">Subscribe</button>
                     </div>
                   </form>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>-->
<!-- News Letter End -->

<!-- FOOTER START -->
<?php include('footer.php'); ?>
<!-- FOOTER END -->
</div>
<script src="js/jquery-1.12.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.7/js/tether.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.downCount.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/fotorama.js"></script>

<script src="js/jquery.magnific-popup.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/custom.js"></script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.18/jquery.touchSwipe.min.js'></script>

<script  src="./script.js"></script>


<script>

    function loadmore(id){

        //var t=load("include/loadmore.php?id="+id);
        var x = document.getElementById("loadmore").lastElementChild.id;

        $.get("include/loadmore.php?id="+x, function(data, status){
            $("#loadmore").append(data);

        });

    }



    $("#slideadd").attr("onclick","slide()");

    function slide(){
        $('#cat').slideToggle()

    }


</script>

<script>


</script>
<script>


</script>
<script>
    /* ------------ Newslater-popup JS Start -------------
    $(window).load(function() {
      $.magnificPopup.open({
        items: {src: '#newslater-popup'},type: 'inline'}, 0);
    });
      /* ------------ Newslater-popup JS End ------------- */
</script>

</body>
</html>
