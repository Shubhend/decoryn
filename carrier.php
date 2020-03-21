<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Lsr Service</title>
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
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.html">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.html">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.html">
</head>
<body class="homepage">


<div class="main">
 
  <!-- HEADER START -->
 <?php include('header.php'); ?>
  <!-- Bread Crumb END -->
  <div class="banner inner-banner1 ">
    <div class="container">
      <section class="banner-detail center-xs">
        <h1 class="banner-title">Carrier</h1>
        <div class="bread-crumb right-side float-none-xs">
          <ul>
            <li><a href="index.php">Home</a>/</li>
            <li><span>Carrier</span></li>
          </ul>
        </div>
      </section>
    </div>
  </div>
  <!-- CONTAIN START -->
  <br/>
  <?php
  if(isset($_POST['submit'])){
	$name=$_POST['name'];
	$phone=$_POST['phone'];
	$detail=$_POST['detail'];
	$date=date("Y-m-d");
	
	
	
			$r=mysql_query("insert into carrier values(NULL,'$name','$phone','$detail','$date')");
	if($r){
		echo '<p style="color:green;font-size:20px;">Your Request Has  Recorded Thankyou ,We Will Contact You Soon</p>
		<div class="right-side float-none-xs mt-sm-30"> 
                        <a class="btn btn-black" href="index.php">
                          <span><i class="fa fa-angle-left"></i></span>Continue Shopping
                        </a>
                      </div>
		';
	}else{
		echo "<p style='color:red;font-size:20px;'>OOPS, Try Again !</p>";
		
	}


	
			
  }			
  
  
  ?>
  <style>
      .im{
          width:100%;
          height:auto;
          background-size:cover;
          
      }
      
  </style>
  
   <section class="ptb-70">
    <div class="container">
      <div style="width:100%;max-height:600px;overflow:scroll;">
   <img class="im" src="carrier/LRS 3-1.jpg">
    <img class="im" src="carrier/LRS 3-2.jpg">
    <img class="im" src="carrier/LRS 3-3.jpg">
    <img class="im" src="carrier/LRS 3-4.jpg">
    <img class="im" src="carrier/LRS 3-5.jpg">
    <img class="im" src="carrier/LRS 3-6.jpg">
    <img class="im" src="carrier/LRS 3-7.jpg">
    <img class="im" src="carrier/LRS 3-8.jpg">
    <img class="im" src="carrier/LRS 3-9.jpg">
   
   </div>
   </div>
   </section>
  
  
  
  <section class="ptb-70">
    <div class="container">
      <div class="row">
        <div class="col-lg-9">
         
          <div class="row">
            <div class="col-12">
              <div class="comments-area-main">
               
                <div class="main-form mt-30">
                  <h4>Request For Carrier</h4>
                  <form action="" method="post">
                    <div class="row mt-30">
                      <div class="col-md-4 mb-30">
                        <input type="text" placeholder="Name" name="name" required>
                      </div>
                      <div class="col-md-4 mb-30">
                        <input type="text" placeholder="Contact No" name="phone" required>
                      </div>
                     
                      <div class="col-12 mb-30">
                        <textarea cols="30" rows="3"  name="detail" placeholder="Your Short Detail (50 words)" required></textarea>
                      </div>
                      <div class="col-12 mb-sm-30">
                        <button class="btn btn-color" name="submit" type="submit">Request For Carrier</button>
                      </div>
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
  <!-- CONTAINER END --> 
  
  <!-- News Letter Start -->
 <?php include('footer.php'); ?>
  <!-- FOOTER END -->   
  </div>
<script src="js/jquery-1.12.3.min.js"></script> 
<script src="../../../../cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="js/bootstrap.min.js"></script>  
<script src="js/jquery.downCount.js"></script>
<script src="js/jquery-ui.min.js"></script> 
<script src="js/fotorama.js"></script>
<script src="highlight.html"></script>
<script src="app.html"></script>
<script src="js/jquery.magnific-popup.js"></script> 
<script src="js/owl.carousel.min.js"></script>  
<script src="js/custom.js"></script>
</body>

</html>
