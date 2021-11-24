<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HomeoAmend</title>
	<link rel="icon" type="image/x-icon" href="assets/images/logo1.jpg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

<body>

    <!-- Header Starts Here--->
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 left-item">
                        <ul>
                            <li> Homeo-Amend</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 d-none d-lg-block right-item">
                        <ul>
                            <li><i class="fas fa-envelope-square"></i> info@homeo-amend.in</li>
                            <li><i class="fas fa-phone-square"></i> +91 987 887 765</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12 nav-img">
                        <img src="assets/images/logo1.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="http://localhost:8080/Homeo/blog">About Us</a></li>
                            <li><a href="services.jsp">Services</a></li>
                            <li><a href="http://localhost:8080/Homeo/testimony">Testimonials</a></li>
                            <li><a href="contact_us.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </header>


    
    <!-- ################# Our Team Starts Here#######################--->

      <!--  ************************* Page Title Starts Here ************************** -->
               <div class="page-nav no-margin row">
                   <div class="container">
                       <div class="row">
                           <h2>About Our Homeopathy Clinic</h2>
                           <ul>
                               <li> <a href="#"><i class="fas fa-home"></i> Home</a></li>
                               <li><i class="fas fa-angle-double-right"></i> Testimonials</li>
                           </ul>
                       </div>
                   </div>
               </div>
       
         <!-- ######## Page  Title End ####### -->
    

   
  <!-- Our Blog Starts Here--->

    <section class="our-blog">
         	<div class="container">
         		<div class="row session-title">
        			<h2>Testimonials</h2>
        			<p>Take a look at what people say about US </p>
        		</div>
        		<div class="blog-row row">
        		<c:forEach var="com" items="${data}">
        			<div class="col-md-3 col-sm-6">
        				<div class="single-blog">
        					<figure>
        						<img src="assets/images/blog/boy-svgrepo-com (1).svg" alt="">
        					</figure>
        					<div class="blog-detail">
        						<small>By ${com[0]} | ${com[1]}</small>
								<blockquote>${com[2]}</blockquote>
        					</div>
        				</div>
        			</div>
        			</c:forEach>
        		</div>
         	</div>
         </section>

   
    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="copy">
            <div class="container">
                <a href="https://www.smarteyeapps.com/">2015 &copy; All Rights Reserved | Designed and Developed by NCPG13</a>
                
                <span>
                <a><i class="fab fa-github"></i></a>
                <a><i class="fab fa-google-plus-g"></i></a>
                <a><i class="fab fa-pinterest-p"></i></a>
                <a><i class="fab fa-twitter"></i></a>
                <a><i class="fab fa-facebook-f"></i></a>
        </span>
            </div>
        </div>
    </footer>

</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script src="assets/js/script.js"></script>


</html>