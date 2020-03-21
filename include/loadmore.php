<?php

if(isset($_GET['id'])){
	

	$id=$_GET['id'];

include('config.php'); 
					



$ret=mysqli_query($c,"select * from products where id > '$id' limit 10  ");
	

while ($row=mysqli_fetch_array($ret)) 
{
$lastid=$row['id'];
	
     	  ?>
			 
                <div id="<?php echo $lastid; ?>" class="col-md-4 col-6 item-width mb-30">
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
					
<?php
}	
}

?>