<%@ include file="/common/unsecureTaglibs.jsp"%>
<ww:set name="productTypes" value="%{getProductTypeList()}"/>  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Sanyuh</title>
        
	    <link rel="Shortcut Icon" type="image/x-icon" href="images/logo-xl.png"/>
	    
    	<meta name="description" content="smart house">
	   
	    <meta name="keywords" content="smart house">

    	<meta name="author" content="Sanyuh">    	

    	<meta property="og:locale" content="zh_TW" /> 

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/styles.css"> 
        <link rel="stylesheet" href="css/lightbox.css">            
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <script src="${ctx}/scripts/jquery-1.7.2.js"></script> 
    </head>
    <body>       
        
        <div class="container-fluid">
            <nav class="navbar navbar-default navbar-fixed-top a_navbar-default" role="navigation">
                <div class="container a_nav_container">
                    <div class="navbar-header a_navbar-header ">
                        <button type="button" class="navbar-toggle a_navbarcolbd" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">選單切換</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand a_navbarlogo" href="index.html"><img class="a_logo" src="images/logo.png" alt="sanyuhlogo" width="125" height="50"></a>
                    </div>
                    
                    
                    <div class="collapse navbar-collapse navbar-ex1-collapse a_navbarcolbd ">                   
                    
                        
                        <form class="navbar-form navbar-right a_navbar-form" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control visible-sm-inline-block visible-md-inline-block visible-lg-inline-block visible-sm-block a_btnbd" placeholder="Search here...">
                            </div>
                            <button onclick="myFunction()" type="submit" class="btn btn-default visible-sm-inline-block visible-md-inline-block visible-lg-inline-block visible-sm-block a_btnbd">search</button>
                            
                        </form>
                        
                            <ul class="nav navbar-nav navbar-right a_navbar-nav">
                                
                                <li><a href="#L1">Company</a></li>
                                <li><a href="#L2">Service</a></li>
                                <li><a href="#L3">Solutions</a></li>
                                <li><a href="#L4">Products</a></li>                                
                                <li><a href="#L5">Contact Us</a></li>
                            </ul>
                    
                    </div>
                                      
                
                </div>
                <div class="clearfix"></div>
            </nav>
            
            
        </div>

             
             <div class="a_carousel">                
                <div id="carousel-id" class="carousel slide" data-ride="carousel">
                    
                    <ol class="carousel-indicators a_carousel-indicators">
                        <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                             
                    </ol>    
                    
                    <div class="carousel-inner">    
                        <div class="item active">
                            <img class="img-responsive" src="images/carousel_products1d.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>1x4 HDMI Video Wall Splitter</h2>
                                    <p>VWH5-14SP</p>
                                    <p>HDMI</p>                                    
                                    <p><a onclick="myFunction()" class="btn btn-sm btn-primary" href="#" role="button">Learn more....</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/carousel_products2d.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>10 x 10 HDMI/HDBaseT Matrix <br>with Audio Matrixing</h2>
                                    <p>MXH7-HNH1082T5</p>
                                    <p>HDMI HDBT</p>
                                    <p><a onclick="myFunction()" class="btn btn-sm btn-primary" href="#" role="button">Learn more....</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/carousel_products3d.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>4x1 Video Wall with <br>Seamless Switching</h2>
                                    <p>VWH3-41SW</p>
                                    <p>HDMI</p>
                                    <p><a onclick="myFunction()" class="btn btn-sm btn-primary" href="#" role="button">Learn more....</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
                
            </div>
                 
            
            
            <div class="a_carousel_m">                
                <div id="carousel-id" class="carousel slide" data-ride="carousel">
                    
                    <ol class="carousel-indicators a_carousel-indicators">
                        <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                             
                    </ol>    
                    
                    <div class="carousel-inner">    
                        <div class="item active">
                            <img class="img-responsive" src="images/carousel_products1s.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>1x4 HDMI Video Wall Splitter</h2>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/carousel_products2s.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>10 x 10 HDMI/HDBaseT Matrix with Audio Matrixing</h2>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="images/carousel_products3s.jpg" alt="">                            
                            <div class="container">
                                <div class="carousel-caption a_carousel_text">
                                    <h2>4x1 Video Wall with Seamless Switching</h2>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
                
            </div>
            
            
            <div class="clearfix"><a name="L1"></a></div>
            
            
            
            <h2 class="text-center">About Company</h2>
            <div id="about" class="container-fluid a_about">
            <div class="row">
                <div class="col-sm-8">                
                <p>Sanyuh Technology, a new innovate company with over 10 years of experience, specializing in AV and Multimedia arena. From the analogue century to the digital world, the High-Definition to Ultra High-Definition and the coming 8K UHD, we were there and will always be there the first. We aim to send you the best solution in order you to connect with the best vision.</p><br>
                <p>With over hundreds of extensive AV product ranges including signal management for home theatre integration, AV signal distribution within Mega Stores, video production, video picture enhancement or signal format conversion, distribution and switching or any incompatibility AV systems, we strive to provide the most simplicity layout with utmost fit utilization functions. Our products includes but not limited to HDM/DVI/3G-SDI Splitter, Extender, Matrix and Switcher, Video Scaler, Repeater/Extender, Signal Generator & Analyzer, Video/TV Wall, Audio Decoder/Encoder, Format Converters, Video over IP and Smart Control System.</p>
                <p>All products are 100% design and manufacture in Taiwan. An over 100+ of strong R&D team and a time to market production lines, we’re sure to give you the latest technology with the highest quality.</p>
                
                </div>
                <div class="col-sm-4">
                    <div class="pic"><img src="images/company_pic.jpg" alt="company images"></div>
                
                </div>
            </div>
            <a name="L2"></a>
            </div>

           
            <div class="container-fluid">                
                <div class="container">
                    <div class="row a_align">
                        <div class="col-xs-12 col-sm-12">
                            <h2 class="text-center">Our Service</h2>
                        </div>
                    </div>
                </div>                    
                <div class="container">
                    <div class="row a_align">
                        <div class="col-xs-12 col-sm-6 col-md-4 a_pb10">
                            <img class="img-circle a_choice" src="images/service_1.jpg" alt="our services">
                            <h4 class="a_textcolor">Diversify Solution</h4>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 a_pb10">
                            <img class="img-circle a_choice" src="images/service_2.jpg" alt="our services">
                            <h4 class="a_textcolor">Full Range Products</h4>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 a_pb10">
                            <img class="img-circle a_choice" src="images/service_3.jpg" alt="our services">
                            
                            <h4 class="a_textcolor">Reliable Service</h4>                            
                        </div>  <a name="L3"></a>                      
                    </div>                    
                </div>                           
            </div>
        
            <div class="clearfix"></div>   

         
         <div class="container-fluid a_sol_container-fluid">
            <h2 class="text-center">Solution</h2>
			<div class="row">
				<div class="col-sm-6 col-md-3 aa bg1">                    
                        <h4>10x10 Matrix connection diagram</h4>
                        <img src="images/solution_1s.gif">
                        <p class="a_textl">Ten HD sources can routed to any of eight destinations via a single Cat.5e/6/7 cable Matrix with Audio Matrixing</p>
                        <p class="a_textr"><a class="btn btn-sm btn-primary example-image-link" href="images/solution1.jpg" data-lightbox="example-set" data-title="Ten HD sources can routed to any of eight destinations via a single Cat.5e/6/7 cable Matrix with Audio Matrixing" role="button">Learn more....</a></p>                            
                </div>
				<div class="col-sm-6 col-md-3 aa bg2">                    
                        <h4>Video wall</h4>
                        <img src="images/solution_4s.gif">
                        <p class="a_textl">4K2K HDMI source to be shown as a single image spanned across multiple displays Video Wall</p>
                        <p class="a_textr"><a class="btn btn-sm btn-primary example-image-link" href="images/solution4.jpg" data-lightbox="example-set" data-title="4K2K HDMI source to be shown as a single image spanned across multiple displays Video Wall" role="button">Learn more....</a></p>
                             
                </div>
				<div class="col-sm-6 col-md-3 aa bg3">                    
                        <h4>CDPS-41SQN</h4>
                        <img src="images/solution_3s.gif">
                        <p class="a_textl">Ten HD sources can routed to any of eight destinations via a single Cat.5e/6/7 cable Matrix with Audio Matrixing</p>
                        <p class="a_textr"><a class="btn btn-sm btn-primary example-image-link" href="images/solution3.jpg" data-lightbox="example-set" data-title="Ten HD sources can routed to any of eight destinations via a single Cat.5e/6/7 cable Matrix with Audio Matrixing" role="button">Learn more....</a></p>
                                                           
                </div>
				<div class="col-sm-6 col-md-3 aa bg4">                    
                        <h4>Wallplate</h4>
                        <img src="images/solution_2s.gif">
                        <p class="a_textl">HDMI/HDBaseT Wallplate Transmitter & Receiver</p>
                        <p class="a_textr"><a class="btn btn-sm btn-primary example-image-link" href="images/solution2.jpg" data-lightbox="example-set" data-title="HDMI/HDBaseT Wallplate Transmitter & Receiver" role="button">Learn more....</a></p>
                         <a name="L4"></a>                  
                </div>
				
			</div>
		</div>
       
            

            <h2 class="text-center">Our Products</h2>
            <div class="a_products">
                <div class="product-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6">
                                <div class="pic">
                                    
                                    <img class="img-responsive a_img" src="images/smart_home.jpg" width="600" >
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="txt">   
                                    <!--<h2>Our Products</h2>-->
                                    <div class="container a_txt">                      						
                                        <table class="table a_table">
                                                <thead>
                                                    <tr>
                                                        <th></th>  
                                                        <th></th>                                                                                     
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	
                                                    <ww:if test = "${fn:length(productTypes) % 2 == 0}">  	
                                                    	<c:set var="columns" value="${fn:length(productTypes)/2}" />
                                                    	<fmt:parseNumber  parseLocale="#" integerOnly="true" value="${fn:length(productTypes)/2}" var="columns" />	
                                                    </ww:if>	
                                                    <ww:else>	
                                                    	<fmt:parseNumber  parseLocale="#" integerOnly="true" value="${fn:length(productTypes)/2+1}" var="columns" />
                                                    </ww:else>	
                                                    
                                                    <c:forEach var="i" begin="1" end="${columns}">                                                    	
                                                         <tr>
                                                           <td><a href id="productTypeLink${i*2-1}"><span id="productType${i*2-1}"/></a></td>
                                                           <td><a href id="productTypeLink${i*2}"><span id="productType${i*2}"/></a></td>                                      
                                                         </tr>
                                                    </c:forEach>
                                                    
                                                </tbody>

                                            </table>
                                            <a name="L5"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

        
        
        <div id="contact" class="container-fluid bg-grey">
        <h2 class="text-center">Contact Us</h2>
        <div class="row a_row">
            <div class="col-sm-6">
            <p>Contact us and we'll get back to you within 24 hours.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> PO BOX 4326 Eight Mile Plains QLD 4113 Australia</p>
            <p><span class="glyphicon glyphicon-phone"></span> 0401916587 (Jeffrey Yeh) </p>
            <p><span class="glyphicon glyphicon-phone"></span> 0432280779 (Cindy Jan)</p>
            <p><span class="glyphicon glyphicon-envelope"></span> jeffrey@sanyuh.com</p>
            <p><span class="glyphicon glyphicon-envelope"></span> cindy@sanyuh.com</p>
            </div>
            <div class="col-sm-6 slideanim">
            <div class="row a_row">
                <div class="col-sm-6 form-group">
                <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
            <div class="row">
                <div class="col-sm-12 form-group">
                <button onclick="myFunction()" class="btn btn-default pull-right" type="submit">Send</button>
                </div>
            </div>
            </div>
        </div>
        </div>


<div id="googleMap" class="a_map" style="height:400px;width:100%;"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(-27.580976, 153.094933);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBm7Sw5P4LUFr_tMJOzGc-SUCPX34XiF6A&callback=myMap"></script>

  
        <div class="clearfix"></div>   

        <footer class="a_footer">
            <p>Copyright © 2017 Sanyuh Technology Pty.Ltd. <br> All rights reserved. </p>
        </footer>     

        <!--popwin   -->

        <script>
            function myFunction() {
            alert("Under Construction");
            }
        </script>

        <script src="https://code.jquery.com/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/lightbox-plus-jquery.js"></script>   
    </body>
</html>



 <script>
 	<c:forEach var="productype" items="${productTypes}" varStatus="status">    
       $('#productType${status.count}').html('${productype.name}'); 
       $('#productTypeLink${status.count}').attr("href","productCategory.do?productType.id=${productype.id}");       
  </c:forEach>
 </script>	
