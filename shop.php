<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <!-- Basic Page Needs
      ================================================== -->
    <meta charset="utf-8">
    <title>search items</title>
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
<body >
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
    <section class="ptb-70">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-3 mb-sm-30 col-lgmd-20per">
                    <div class="sidebar-block">
                        <div class="sidebar-box listing-box mb-40"> <span class="opener plus"></span>
                            <div class="sidebar-title">
                                <h3><span>Categories</span></h3>
                            </div>
                            <div class="sidebar-contant">
                                <ul>
                                    <?php
                                    $retr=mysqli_query($c,"select * from category");
                                    while ($rowr=mysqli_fetch_array($retr))
                                    {
                                        ?>

                                        <li><a href="shop.php?other=cat&&cat=<?php echo $rowr['categoryName']; ?>"><?php echo $rowr['categoryName']; ?> <span></span></a></li>

                                    <?php } ?>
                                </ul>
                            </div>
                        </div>


                        <!--<div class="sidebar-box sidebar-item"> <span class="opener plus"></span>
                          <div class="sidebar-title">
                            <h3><span>Best Selle</span>r</h3>
                          </div>
                          <div class="sidebar-contant">
                            <ul>
                              <li>
                                <div class="pro-media"> <a href="#"><img alt="T-shirt" src="images/1.jpg"></a> </div>
                                <div class="pro-detail-info"> <a href="#">Black African Print</a>
                                  <div class="rating-summary-block">
                                    <div class="rating-result" title="53%"> <span style="width:53%"></span> </div>
                                  </div>
                                  <div class="price-box"> <span class="price">$80.00</span> </div>
                                  <div class="cart-link">
                                    <form>
                                      <button title="Add to Cart">Add To Cart</button>
                                    </form>
                                  </div>
                                </div>
                              </li>
                              <li>
                                <div class="pro-media"> <a href="#"><img alt="T-shirt" src="images/1.jpg"></a> </div>
                                <div class="pro-detail-info"> <a href="#">Black African Print</a>
                                  <div class="rating-summary-block">
                                    <div class="rating-result" title="53%"> <span style="width:53%"></span> </div>
                                  </div>
                                  <div class="price-box"> <span class="price">$80.00</span> </div>
                                  <div class="cart-link">
                                    <form>
                                      <button title="Add to Cart">Add To Cart</button>
                                    </form>
                                  </div>
                                </div>
                              </li>
                              <li>
                                <div class="pro-media"> <a href="#"><img alt="T-shirt" src="images/1.jpg"></a> </div>
                                <div class="pro-detail-info"> <a href="#">Black African Print</a>
                                  <div class="rating-summary-block">
                                    <div class="rating-result" title="53%"> <span style="width:53%"></span> </div>
                                  </div>
                                  <div class="price-box"> <span class="price">$80.00</span> </div>
                                  <div class="cart-link">
                                    <form>
                                      <button title="Add to Cart">Add To Cart</button>
                                    </form>
                                  </div>
                                </div>
                              </li>
                            </ul>
                          </div>
                        </div>-->
                    </div>
                </div>
                <div class="col-xl-10 col-lg-9 col-lgmd-80per">
                    <div class="shorting mb-30">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="view">
                                    <div class="list-types grid active ">
                                    </div>
                                    <!--<div class="list-types list"> <a href="shop-list.html">
                                      <div class="list-icon list-types-icon"></div>
                                      </a>
                                    </div>-->
                                </div>
                                <!-- <div class="short-by float-right-sm"> <span>Sort By :</span>
                                   <div class="select-item select-dropdown">
                                     <fieldset>
                                       <select  name="speed" id="sort-price" class="option-drop">
                                         <option value="" selected="selected">Name (A to Z)</option>
                                         <option value="">Name(Z - A)</option>
                                         <option value="">price(low&gt;high)</option>
                                         <option value="">price(high &gt; low)</option>
                                         <option value="">rating(highest)</option>
                                         <option value="">rating(lowest)</option>
                                       </select>
                                     </fieldset>
                                   </div>
                                 </div>-->
                            </div>
                            <div class="col-lg-6">
                                <!-- <div class="show-item right-side float-left-sm"> <span>Show :</span>
                                   <div class="select-item select-dropdown">
                                     <fieldset>
                                       <select  name="speed" id="show-item" class="option-drop">
                                         <option value="" selected="selected">24</option>
                                         <option value="">12</option>
                                         <option value="">6</option>
                                       </select>
                                     </fieldset>
                                   </div>
                                   <span>Per Page</span>
                                   <div class="compare float-right-sm"> <a href="#" class="btn btn-color">Compare (0)</a> </div>
                                 </div>-->
                            </div>
                        </div>
                    </div>






                    <?php



                    $sh='';
                    if(isset($_GET['other'])){
                        $y=$_GET['cat'];

                        $re=mysqli_query($c,"select * from category where categoryName = '$y'  ");
                        $g=mysqli_fetch_array($re);
                        $if=$g['id'];


                        $ret=mysqli_query($c,"select * from products where category = '$if' && status=1 ");

                    }else if(isset($_GET['q'])){

                        $t=$_GET['q'];
                        $rrr=mysqli_query($c,"select * from products where productName like '%$t%' && status=1  ");
                        $d=mysqli_num_rows($rrr);

                        if($d==0){

                            $sh="<p style='color:red;'>No Search Result Found</p><br/>";
                            $ret=mysqli_query($c,"select * from products where status=1 ");


                        }else{

                            $ret=mysqli_query($c,"select * from products where productName like '%$t%' && status=1  ");

                        }

                    }else if(isset($_GET['sub'])){

                        $b=$_GET['sub'];
                        $retf=mysqli_query($c,"select * from subcategory where subcategory = '$b'  ");
                        $gf=mysqli_fetch_array($retf);
                        $ifs=$gf['id'];
                        $ret=mysqli_query($c,"select * from products where subCategory = '$ifs' && status=1  ");


                    }else if(isset($_GET['show'])){

                        $ret=mysqli_query($c,"select * from products where  status=1 ");
                    }else if(isset($_GET['company'])){
                        $comp=$_GET['company'];
                        $ret=mysqli_query($c,"select * from products where productCompany='$comp' && status=1 ");
                    }
                    ?>


                    <div class="product-listing">
                        <div class="inner-listing">
                            <?php echo $sh; ?>
                            <div class="row">

                                <style>
                                    .med{
                                        height:100%;
                                        width:100%;
                                    }
                                    @media (max-width: 600px){
                                        .med{

                                        }
                                    }
                                </style>
                                <style>
                                    .fade-in {
                                        animation: fadeIn ease 5s;
                                        -webkit-animation: fadeIn ease 5s;
                                        -moz-animation: fadeIn ease 5s;
                                        -o-animation: fadeIn ease 5s;
                                        -ms-animation: fadeIn ease 5s;
                                    }


                                    @keyframes fadeIn{
                                        0% {
                                            opacity:0;
                                        }
                                        100% {
                                            opacity:1;
                                        }
                                    }

                                    @-moz-keyframes fadeIn {
                                        0% {
                                            opacity:0;
                                        }
                                        100% {
                                            opacity:1;
                                        }
                                    }

                                    @-webkit-keyframes fadeIn {
                                        0% {
                                            opacity:0;
                                        }
                                        100% {
                                            opacity:1;
                                        }
                                    }

                                    @-o-keyframes fadeIn {
                                        0% {
                                            opacity:0;
                                        }
                                        100% {
                                            opacity:1;
                                        }
                                    }

                                    @-ms-keyframes fadeIn {
                                        0% {
                                            opacity:0;
                                        }
                                        100% {
                                            opacity:1;
                                        }
                                    }

                                </style>

                                <script>
                                    function change(id){

                                        var src2=  $("#"+id+"img2").attr('src');

                                        var src1=  $("#"+id+"img").attr('src');

                                        if(src2.length>21){
                                            $("#"+id+"img").removeClass('fade-in');
                                            $("#"+id+"img").fadeOut();
                                            $("#"+id+"img").attr('src',src2);
                                            $("#"+id+"img").addClass('fade-in');
                                            $("#"+id+"img").fadeIn();
                                            $("#"+id+"img2").attr('src',src1);


                                        }

                                        // $("#"+id+"img").attr('src',src);

                                    }

                                    function change2(id){

                                        var src2=  $("#"+id+"img2").attr('src');

                                        var src1=  $("#"+id+"img").attr('src');

                                        if(src2.length>21){
                                            $("#"+id+"img").addClass('fade-in');

                                            $("#"+id+"img").attr('src',src2);
                                            $("#"+id+"img2").attr('src',src1);
                                            $("#"+id+"img").removeClass('fade-in');

                                        }

                                    }

                                </script>


                                <?php
                                while ($row=mysqli_fetch_array($ret))
                                {
                                    $lastid=$row['id'];

                                    ?>



                                    <div id="<?php echo $lastid; ?>" onmouseout="change2('<?php echo $lastid; ?>')" onmouseover="change('<?php echo $lastid; ?>')" class="col-md-3 col-12 item-width mb-30">
                                        <div class="product-item" >
                                            <div class="product-image">

                                                <a href="product.php?pid=<?php echo $row['id']; ?>">

                                                    <img   class="med fade-in" id="<?php echo $lastid; ?>img"  src="productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="Stylexpo">

                                                    <img data-animation="animated flipInX" class="med fade-in"  style="display:none;opacity:1" id="<?php echo $lastid; ?>img2"  src="productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage2']);?>" alt="Stylexpo">


                                                </a>
                                                <div class="product-detail-inner">

                                                </div>
                                            </div>
                                            <div class="product-item-details">
                                                <div class="product-item-name"> <a href="product.php?pid=<?php echo $row['id']; ?>"><?php echo htmlentities($row['productName']);?></a> </div>
                                                <!--
                      <div class="price-box"> <span class="price">Model No.<?php echo $row['modelno']; ?></span> </div>                      -->
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>



                                <!--<div class="row">
                                  <div class="col-12">
                                    <div class="pagination-bar">
                                      <ul>
                                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <!-- CONTAINER END -->

    <!-- News Letter Start -->

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
