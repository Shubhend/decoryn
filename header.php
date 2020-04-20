<style>
    .float{
        position:relative;
        width:10px;
        height:10px;

        color:#25d366;
        border-radius:50px;
        text-align:center;
        font-size:30px;
        z-index:100;
    }

    .my-float{
        margin-top:0px;
        width:45px;
    }
    .sh{
        display:none;
    }

</style>
<style>
    .inner{
        position: relative;
        top: -94px;
        color: black;
        left: 20%;
        font-size: 30px;
    }

    @media only screen and (max-width: 600px) {
        .side-toggle{
            display:none;

        }
        .carousel-indicators{
            display:none;
        }
        #top .col-6 {
            display:block;
            max-width:100%;
            flex: 0 0 100%;
            padding: 5px;

            font-size: 5vw;
            color:black;
            background-size: cover;
        }
        .right-side{
            float:left;
        }
        .sh{
            display:block;
        }
        #add{
            display:none;
        }
    }
    @media (max-width: 600px){

        .med{
            height:182px;
        }
        .share{
            display:none;

        }
        #flex div{
            flex-basis:100%;
            padding:4px;
        }
    }

    #flex div{
        padding:5px;
        margin-left:5px;
    }
</style>
<header class="navbar navbar-custom container-full-sm" id="header">

    <div class="header-middle" style="padding:0px !important ;width:100% !important;">
        <div class="container" style="width:100%;">


            <div class="header-tops" style="width:100%;">
                <div class="container" style="width:100%;background: #ADA996;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
                    <div class="row" id="top" style="margin-top:1px;padding:5px;">
                        <div class="col-6">
                            <div class="top-left-link left-side" style="background: #5dbb07;
    padding: 8px;
    border-radius: 25px;">

                                <a href="https://api.whatsapp.com/send?phone=+918448956972&text=Contact Request." class="" target="_blank">
                                    <i class="fa fa-whatsapp my-float float" style="color:white"></i>
                                    <span style="font-size:20px;color:white; font-weight:bold; ">  +91 8448956972   </span>
                                </a>

                            </div>
                        </div>
                        <div class="col-6" id="flex" style="display:flex;flex-wrap:wrap;">
                            <div style="margin-right:2px;  font-weight:bold;  background: #f36b6b;
    padding: 8px;
    border-radius: 25px;">
                                <i class="fa fa-envelope" aria-hidden="true" style="color:white;"></i> <a href="mailto:decorynsales@gmail.com" style="    color: white;
    font-weight: bold;">decorynsales@gmail.com</a>

                            </div>
                            <!--	<div style="background-color: deepskyblue;">
                                   <i class="fa fa-phone"  aria-hidden="true"></i> <a style="    color: white;
                    font-weight: bold;" href="tel:8800314982" >
                                       +91 8800314982
                                   </a><br/>

                              </div>
                              -->
                            <div style=" padding: 8px;
    border-radius: 25px;">
                                <i class="fa fa-map-marker" > </i>
                                B- 14 Jwala Puri, DSIDC Shed Area No. - 4,
                                Nangloi, New Delhi- 110041<br/>
                            </div>

                            <div class="top-right-link right-side">
                                <ul>
                                    <li class="login-icon content">
                                        <a class="fa fa-phone">
                                            <i class="fa fa-phone"></i>

                                        </a>
                                        <a href="admin/index.php" title="Login">Admin</a>
                                        <!--<a href="register.html" title="Register">Register</a>-->
                                        <div class="content-dropdown">
                                            <ul>
                                                <li class="login-icon"><a href="admin/index.php" title="Login"><i class="fa fa-user"></i> Admin</a></li>
                                                <li class="login-icon"><a href="login.php" title="Login"><i class="fa fa-user"></i> Login</a></li>
                                                <li class="login-icon"><a href="register.php" title="Login"><i class="fa fa-user"></i> Signup</a></li>
                                                <!--    <li class="register-icon"><a href="register.html" title="Register"><i class="fa fa-user-plus"></i> Register</a></li>
                                                 --> </ul>
                                        </div>
                                    </li>





                                </ul>
                            </div>

                            <div class="sh">







                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style>


            </style>
            <hr>
            <div class="row">











                <div class="col-xl-3 col-md-3 col-lgmd-20per">
                    <div class="header-middle-left">
                        <div class="navbar-header float-none-sm">
                            <a class="navbar-brand page-scroll" href="index.php" style="padding:0px;">
                                <img src="images/mainlogo.png" style="height:100px;width:100%;    transform: scaleY(3.1);">

                                <!--<img alt="Stylexpo" src="images/logo.png">-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 col-lgmd-60per">
                    <div class="header-right-part">
                        <!--<div class="category-dropdown select-dropdown">
                          <fieldset>
                            <select id="search-category" class="option-drop" name="search-category">
                              <option value="">All Categories</option>
                              <option value="20">Electronics</option>
                              <option value="26">■ PC</option>
                              <option value="43">&nbsp;&nbsp;&nbsp;- Dell Inspiron</option>
                              <option value="44">&nbsp;&nbsp;&nbsp;- Hp Notebook</option>
                              <option value="47">&nbsp;&nbsp;&nbsp;- Sony Vio</option>
                              <option value="55">&nbsp;&nbsp;&nbsp;- Samsung Tablet</option>
                              <option value="27">■ Mac</option>
                              <option value="48">&nbsp;&nbsp;&nbsp;- Desktop Mac</option>
                              <option value="49">&nbsp;&nbsp;&nbsp;- Laptop Mac</option>
                              <option value="50">&nbsp;&nbsp;&nbsp;- Samsung Mac</option>
                              <option value="38">&nbsp;&nbsp;&nbsp;- Android tablets</option>
                              <option value="51">■ Laptops</option>
                              <option value="52">&nbsp;&nbsp;&nbsp;- Accer laptop</option>
                              <option value="56">&nbsp;&nbsp;&nbsp;- apple ipad</option>
                              <option value="53">&nbsp;&nbsp;&nbsp;- HP Laptop</option>
                              <option value="54">&nbsp;&nbsp;&nbsp;- DELL Laptop</option>
                              <option value="18">jewellery</option>
                              <option value="25">Components</option>
                              <option value="29">■ Mice and Trackballs</option>
                              <option value="28">■ Monitors</option>
                              <option value="35">&nbsp;&nbsp;&nbsp;- Desktop</option>
                              <option value="36">&nbsp;&nbsp;&nbsp;- LED</option>
                              <option value="30">■ Printers</option>
                              <option value="31">■ Scanners</option>
                              <option value="32">■ Web Cameras</option>
                              <option value="57">Books</option>
                              <option value="17">Interior</option>
                              <option value="24">Fashion</option>
                              <option value="33">House Hold</option>
                              <option value="34">Accessories</option>
                            </select>
                          </fieldset>
                        </div>-->
                        <div class="main-search">
                            <div class="header_search_toggle desktop-view">
                                <form action="shop.php" method="get">
                                    <div class="search-box">
                                        <input name="q" class="input-text" type="text" placeholder="Search Product  here...">
                                        <button class="search-btn"></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <style>
                    .social{
                        color: #ff303;
                        font-size:20px;
                        margin-left:10px;
                    }
                </style>
                <div class="col-xl-3 col-md-3 col-lgmd-20per">
                    <div class="right-side float-left-xs header-right-link ">
                        <ul>
                            <!-- <li class="compare-icon">
                               <a href="compare.html">
                                 <span></span>
                               </a>
                             </li>-->

                            <li class="share"><a title="Facebook" class=" wishlist-icon"><i class="fa fa-facebook social"> </i></a></li>

                            <li class="share"><a title="Linkedin" class="linkedin"><i class="fa fa-youtube social"> </i></a></li>

                            <li class="share"><a title="Pinterest" class="pinterest"><i class="fa fa-instagram social"> </i></a></li>



                            <li class="side-toggle">
                                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button"><i class="fa fa-bars"></i></button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="row position-r">
                <div class="col-xl-2 col-lg-3 col-lgmd-20per position-initial">
                    <div class="sidebar-menu-dropdown home">
                        <a class="btn-sidebar-menu-dropdown" id="slideadd" ><span></span>Products </a>
                        <div id="cat" class="cat-dropdown">
                            <div class="sidebar-contant">
                                <div id="menu" class="navbar-collapse collapse" >

                                    <ul class="nav navbar-nav ">
                                        <!--  <li class="level sub-megamenu">
                                            <span class="opener plus"></span>
                                            <a href="shop.html" class="page-scroll">

                                            <i class="fa fa-female"></i>Fashion (10)</a>
                                            <div class="megamenu mobile-sub-menu">
                                              <div class="megamenu-inner-top">
                                                <ul class="sub-menu-level1">
                                                  <li class="level2">
                                                    <a href="shop.html"><span>Kids Fashion</span></a>
                                                    <ul class="sub-menu-level2 ">
                                                      <li class="level3"><a href="shop.html"><span>■</span>Blazer & Coat</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Sport Shoes</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Trousers</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Purse</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Wallets</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Skirts</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Tops</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Sleepwear</a></li>
                                                      <li class="level3"><a href="shop.html"><span>■</span>Jeans</a></li>
                                                    </ul>
                                                  </li>
                                                  <li  class="level2">
                                                    <div class="sub-menu-slider d-none d-lg-block ">
                                                      <div class="row">
                                                        <div class="owl-carousel sub_menu_slider">
                                                          <div class="product-item">
                                                            <div class="product-image">
                                                              <a href="product-page.html">
                                                                <img src="images/2.jpg" alt="Stylexpo">
                                                              </a>
                                                              <div class="product-detail-inner">
                                                                <div class="detail-inner-left align-center">
                                                                  <ul>
                                                                    <li class="pro-cart-icon">
                                                                      <form>
                                                                        <button title="Add to Cart"><span></span></button>
                                                                      </form>
                                                                    </li>
                                                                    <li class="pro-wishlist-icon"><a href="wishlist.html" title="Wishlist"></a></li>
                                                                    <li class="pro-compare-icon"><a href="compare.html" title="Compare"></a></li>
                                                                  </ul>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="product-item-details">
                                                              <div class="product-item-name"> <a href="product-page.html">Defyant Reversible Dot Shorts</a>
                                                              </div>
                                                              <div class="price-box"> <span class="price">$80.00</span>
                                                              </div>
                                                              <div class="rating-summary-block right-side">
                                                                <div title="53%" class="rating-result"> <span style="width:53%"></span> </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                          <div class="product-item">
                                                            <div class="product-image">
                                                              <a href="product-page.html">
                                                                <img src="images/6.jpg" alt="Stylexpo">
                                                              </a>
                                                              <div class="product-detail-inner">
                                                                <div class="detail-inner-left align-center">
                                                                  <ul>
                                                                    <li class="pro-cart-icon">
                                                                      <form>
                                                                        <button title="Add to Cart"><span></span></button>
                                                                      </form>
                                                                    </li>
                                                                    <li class="pro-wishlist-icon"><a href="wishlist.html" title="Wishlist"></a></li>
                                                                    <li class="pro-compare-icon"><a href="compare.html" title="Compare"></a></li>
                                                                  </ul>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="product-item-details">
                                                              <div class="product-item-name"> <a href="product-page.html">Defyant Reversible Dot Shorts</a> </div>
                                                              <div class="price-box"> <span class="price">$80.00</span>
                                                              </div>
                                                              <div class="rating-summary-block right-side">
                                                                <div title="53%" class="rating-result"> <span style="width:53%"></span> </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                          <div class="product-item">
                                                            <div class="product-image">
                                                              <a href="product-page.html">
                                                                <img src="images/8.jpg" alt="Stylexpo">
                                                              </a>
                                                              <div class="product-detail-inner">
                                                                <div class="detail-inner-left align-center">
                                                                  <ul>
                                                                    <li class="pro-cart-icon">
                                                                      <form>
                                                                        <button title="Add to Cart"><span></span></button>
                                                                      </form>
                                                                    </li>
                                                                    <li class="pro-wishlist-icon"><a href="wishlist.html" title="Wishlist"></a></li>
                                                                    <li class="pro-compare-icon"><a href="compare.html" title="Compare"></a></li>
                                                                  </ul>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="product-item-details">
                                                              <div class="product-item-name"> <a href="product-page.html">Defyant Reversible Dot Shorts</a> </div>
                                                              <div class="price-box"> <span class="price">$80.00</span>
                                                              </div>
                                                              <div class="rating-summary-block right-side">
                                                                <div title="53%" class="rating-result"> <span style="width:53%"></span> </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                          <div class="product-item">
                                                            <div class="product-image">
                                                              <a href="product-page.html">
                                                                <img src="images/10.jpg" alt="Stylexpo">
                                                              </a>
                                                              <div class="product-detail-inner">
                                                                <div class="detail-inner-left align-center">
                                                                  <ul>
                                                                    <li class="pro-cart-icon">
                                                                      <form>
                                                                        <button title="Add to Cart"><span></span></button>
                                                                      </form>
                                                                    </li>
                                                                    <li class="pro-wishlist-icon"><a href="wishlist.html" title="Wishlist"></a></li>
                                                                    <li class="pro-compare-icon"><a href="compare.html" title="Compare"></a></li>
                                                                  </ul>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="product-item-details">
                                                              <div class="product-item-name"> <a href="product-page.html">Defyant Reversible Dot Shorts</a> </div>
                                                              <div class="price-box"> <span class="price">$80.00</span>
                                                              </div>
                                                              <div class="rating-summary-block right-side">
                                                                <div title="53%" class="rating-result"> <span style="width:53%"></span> </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                          <div class="product-item">
                                                            <div class="product-image">
                                                              <a href="product-page.html">
                                                                <img src="images/16.jpg" alt="Stylexpo">
                                                              </a>
                                                              <div class="product-detail-inner">
                                                                <div class="detail-inner-left align-center">
                                                                  <ul>
                                                                    <li class="pro-cart-icon">
                                                                      <form>
                                                                        <button title="Add to Cart"><span></span></button>
                                                                      </form>
                                                                    </li>
                                                                    <li class="pro-wishlist-icon"><a href="wishlist.html" title="Wishlist"></a></li>
                                                                    <li class="pro-compare-icon"><a href="compare.html" title="Compare"></a></li>
                                                                  </ul>
                                                                </div>
                                                              </div>
                                                            </div>
                                                            <div class="product-item-details">
                                                              <div class="product-item-name"> <a href="product-page.html">Defyant Reversible Dot Shorts</a> </div>
                                                              <div class="price-box"> <span class="price">$80.00</span>
                                                              </div>
                                                              <div class="rating-summary-block right-side">
                                                                <div title="53%" class="rating-result"> <span style="width:53%"></span> </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </li>
                                                </ul>
                                              </div>
                                            </div>
                                          </li>
                                          <li class="level">
                                            <a href="shop.html" class="page-scroll"><i class="fa fa-camera-retro"></i>Cameras (70)</a>
                                          </li>
                                          <li class="level">
                                            <a href="shop.html" class="page-scroll">
                                              <i class="fa fa-desktop"></i>computers (10)<div class="menu-label"><span class="hot-menu"> Hot </span></div>
                                            </a>
                                          </li>-->


                                        <?php
                                        include('include/config.php');
                                        $retr=mysqli_query($c,"select * from category order by id desc");
                                        while ($rowr=mysqli_fetch_array($retr))
                                        {


                                            ?>

                                            <li class="">

                                                <a href="shop.php?other=cat&&cat=<?php echo $rowr['categoryName']; ?>" class="page-scroll"><?php echo $rowr['categoryName']; ?></a>
                                                <div class="megamenu mobile-sub-menu">
                                                    <div class="megamenu-inner-top">
                                                        <ul class="sub-menu-level1">
                                                            <li class="level2">
                                                                <a href="shop.html"><span>New</span></a>
                                                                <ul class="sub-menu-level2">

                                                                </ul>
                                                            </li>
                                                            <!--<li class="level2">
                                                              <a href="shop.html"><span>Women Fashion</span></a>
                                                              <ul class="sub-menu-level2 ">
                                                                <li class="level3"><a href="shop.html"><span>■</span>Blazer & Coat</a></li>
                                                                <li class="level3"><a href="shop.html"><span>■</span>Sport Shoes</a></li>
                                                                <li class="level3"><a href="shop.html"><span>■</span>Phone Cases</a></li>
                                                                <li class="level3"><a href="shop.html"><span>■</span>Trousers</a></li>
                                                                <li class="level3"><a href="shop.html"><span>■</span>Purse</a></li>
                                                                <li class="level3"><a href="shop.html"><span>■</span>Wallets</a></li>
                                                              </ul>
                                                            </li>
                                                            <li class="level2 d-none d-lg-block">
                                                              <a href="shop.html">
                                                                <img src="images/drop_banner.jpg" alt="Stylexpo">
                                                              </a>
                                                            </li>-->
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>


                                        <?php } ?>

                                    </ul>
                                    <div class="header-top mobile">
                                        <div class="">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="top-link top-link-left select-dropdown ">
                                                        <fieldset>
                                                            <select name="speed" class="country option-drop">
                                                                <option selected="selected">English</option>
                                                                <option>Frence</option>
                                                                <option>German</option>
                                                            </select>

                                                        </fieldset>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="top-link right-side">
                                                        <div class="help-num" >Need Help? : 03 233 455 55</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-lgmd-60per">
                    <div class="bottom-inner">
                        <div class="position-r">
                            <div class="nav_sec position-r">
                                <div class="mobilemenu-title mobilemenu" onclick="$('#mobslide').slideToggle();$('#mobpro').toggle();">
                                    <span>Menu</span>
                                    <i class="fa fa-bars pull-right"></i>
                                </div>
                                <div class="mobilemenu-content" id="mobslide">
                                    <ul class="nav navbar-nav" id="menu-main">
                                        <li class="active">
                                            <a href="index.php"><span>Home</span></a>
                                        </li>

                                        <li>
                                            <a href="aboutus.php"><span>Company Profile</span></a>
                                        </li>
                                        <li>
                                            <a href="rulesregulation.php"><span>Rules & Regulation</span></a>
                                        </li>
                                        <li>
                                            <a href="index.php#contact"><span>Contact Us</span></a>
                                        </li>
                                        <li id="mobpro" style="display:none;">
                                            <a href="index.php#productlist"><span>Product</span></a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-3 col-lgmd-20per">
                    <div class="right-side float-left-xs header-right-link">
                        <div class="right-side">
                            <div class="help-num" >Need Help? : 8800314982</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>