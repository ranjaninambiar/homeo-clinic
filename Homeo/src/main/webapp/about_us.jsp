<%@page language="java" import="java.util.*" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Homeo-Amend</title>
    <link rel="icon" type="image/x-icon" href="assets/images/logo.jpg" />
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

<body>

    <!-- ################# Header Starts Here#######################--->
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 left-item">
                        <ul>
                            <li><i class="fas fa-envelope-square"></i>info@Homeo-Amend.com</li>
                            <li><i class="fas fa-phone-square"></i> +123 987 887 765</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 d-none d-lg-block right-item">
                        <ul>
                            <li><a><i class="fab fa-github"></i></a></li>
                            <li><a><i class="fab fa-google-plus-g"></i></a></li>
                            <li> <a><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a><i class="fab fa-twitter"></i></a></li>
                            <li> <a><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12 nav-img">
                        <img src="assets/images/logo.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about_us.html">About Us</a></li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="blog.html">Testimonials</a></li>
                            <li><a href="contact_us.html">Contact Us</a></li>
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
                               <li><i class="fas fa-angle-double-right"></i> About Us</li>
                           </ul>
                       </div>
                   </div>
               </div>
       
         <!-- ######## Page  Title End ####### -->
    

   
 <!--  ************************* About Us Content Start Here  ************************** -->
            <div class="about-us">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <img src="assets/images/blog/blog_1.jpg" alt="">
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <h2>Welcome to  Homeo-amend Clinic</h2>
                            <p>&nbsp &nbsp &nbsp There is a chain of world-class Homeopathy Clinics started by Dr.Srikant Morlawar an Eminent Homeopath with decades of rich experience, expertise, and practice. Homeocare International Pvt Ltd is an outcome of strong and dedicated efforts for making Homeopathy treatment a truly global organisation that will provide the widest range of treatment for any sort of disease with good results. We are having the top, well experienced, and expertised Homeopathic doctors. Our Homeopathic doctors are expertised in Homeopathy/Homeopathic treatments.</p>
                            
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        
        <!-- ######## About US End ####### -->
        
        


    <!-- ################# Our Team Starts Here#######################--->


    <section class="our-team">
        <div class="container">
            <div class="inner-title">
                <h2>Meet our Team</h2>
                <p>Take a look at our innovative and experiance team</p>
            </div>
            <div class="row team-member">
            <%Iterator itr;%>
			<% List data= 
			(List)request.getAttribute("data");
			for (itr=data.iterator(); itr.hasNext(); )
			{
			%>
                <div class="col-md-3 col-sm-6">
                    <div class="user-card">
                        <div class="userar">
                            <img class="teammempic" alt="" src="assets/images/blog/boy-svgrepo-com (1).svg">
                        </div>
                        <div class="detfs">
                            <p><%=itr.next()%><i> - MD</i></p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-github fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p fa-lg"></i></a></li>
                            </ul>
                            <br>
                            <p ><%=itr.next()%>+ Years of Experiance in <%=itr.next()%> </p>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="user-card">
                        <div class="userar">
                            <img class="teammempic" alt="" src="assets/images/blog/boy-svgrepo-com (2).svg">
                        </div>
                        <div class="detfs">
                            <p><%=itr.next()%><i> - MD</i></p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-github fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p fa-lg"></i></a></li>
                            </ul>
                             <br>
                            <p ><%=itr.next()%> Years of Experiance in <%=itr.next()%> </p>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="user-card">
                        <div class="userar">
                            <img class="teammempic" alt="" src="assets/images/blog/girl-svgrepo-com.svg">
                        </div>
                        <div class="detfs">
                            <p><%=itr.next()%><i> - MD</i></p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-github fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p fa-lg"></i></a></li>
                            </ul>
                              <br>   
                            <p ><%=itr.next()%> Years of Experiance in <%=itr.next()%> </p>

                        </div>
                    </div>

                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="user-card">
                        <div class="userar">
                            <img class="teammempic" alt="" src="assets/images/blog/boy-svgrepo-com.svg">
                        </div>
                        <div class="detfs">
                            <p><%=itr.next()%><i> - MD</i></p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-github fa-lg"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p fa-lg"></i></a></li>
                            </ul>
                             <br>   
                            <p ><%=itr.next()%> Years of Experiance in <%=itr.next()%> </p>

                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </section>
             <!-- ################# Doctors Message Starts Here#######################--->


    <div class="doctor-message">
        <div class="inner-lay">
            <div class="container">
                <div class="row">


                    <div class="col-md-6 col-sm-12 doc-img">
                        <img  src="assets/images/doctt.png" alt="">
                    </div>
                    <div class="col-md-6 col-sm-12 doc-det">
                        <h2>Hello, I’m Dr. Sanjay</h2>
                        <span>B.Sc., D.H.M.S, M.D(HOMOEO).,Ph.D</span>

                        <p>My areas of specialization include Skin Diseases and Child Care. I've worked with the hospital since 1991 and continue serving people with utmost professionalism and diplomacy.</p>

                        <h4>Call me on : +123 98 8887</h4>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="copy">
            <div class="container">
                <a href="https://www.smarteyeapps.com/">Designed and Developed by NCPG13</a>
                
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