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
  <div class="banner inner-banner1 ">
    <div class="container">
      <section class="banner-detail center-xs">
        <h1 class="banner-title">Sale</h1>
        <div class="bread-crumb right-side float-none-xs">
          <ul>
            <li><a href="index.php">Home</a>/</li>
            <li><span>Buy Now</span></li>
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
   
            <div class="sidebar-box mb-40 d-none d-lg-block"> 
              <a href="#"> 
                <img src="images/left-banner.jpg" alt="Stylexpo"> 
              </a> 
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
                  <div class="list-types grid active "> <a href="">
                    <div class="grid-icon list-types-icon"></div>
                    </a> 
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
$n=date("Y-m-d");
$date=date_create(date("Y-m-d"));
date_add($date,date_interval_create_from_date_string("-30 days"));
$before=date_format($date,"Y-m-d");
					
$y="select * 
from products
WHERE postingDate BETWEEN '$before'  AND '$n' ";
	
	$ret=mysqli_query($c,$y);
	

?>
		  
		  
          <div class="product-listing">
            <div class="inner-listing">
			
              <div class="row">
			
			   <style>
			  .med{
				 height:320px;
				 width:100%; 
			  }
			  @media (max-width: 600px){
.med{
    height:182px;
}
}			  
			  </style>
					  						



<?php
while ($row=mysqli_fetch_array($ret)) 
{


?>		
     	  
			 
                <div class="col-md-4 col-6 item-width mb-30">
			
                  <div class="product-item">
                    <div class="product-image"> <a href="product.php?pid=<?php echo $row['id']; ?>"> <img class="med"  src="productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="Stylexpo"> </a>
                      <div class="product-detail-inner">
                        <div class="detail-inner-left align-center">
                          <ul>
                            <li class="pro-cart-icon">
                                <button onclick="window.location.href ='product.php?pid=<?php echo htmlentities($row['id']);?>';" title="View Details"><span></span>View Details</button>
                              
                            </li>
                            
                           </ul>
                        </div>
                      </div>
                    </div>
                    <div class="product-item-details">
                  <div class="product-item-name"> <a href="product.php?pid=<?php echo $row['id']; ?>"><?php echo htmlentities($row['productName']);?></a> </div>
                      <div class="price-box"> <span class="price">Model No.<?php echo $row['modelno']; ?></span> </div>                        
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
</body>
</html>
