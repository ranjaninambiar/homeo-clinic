<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <!-- fa -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    
    <!-- Style -->
    <link rel="stylesheet" href="assets/css/dashboard-style.css">

    <title>Homeo-Amend</title>
    <link rel="icon" type="image/x-icon" href="assets/images/logo.jpg" />
  </head>
  <body>
    <aside class="sidebar">
      <div class="toggle">
        <a href="#" class="burger js-menu-toggle" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>
      </div>
      <div class="side-inner">

        <div class="logo-wrap">
          <div class="logo">
            <span>U</span>
          </div>
          <span class="logo-text">${name}</span>
        </div>
          
        <div class="nav-menu">
          <ul>
            <li class="active"><a href="http://localhost:8080/Homeo/dashboard" class="d-flex align-items-center"><span class="fa fa-home"></span><span class="menu-text">Home</span></a></li>
            <li><a href="book_an_appointment.jsp" class="d-flex align-items-center"><span class="fa fa-calendar-check "></span><span class="menu-text">Book an appointment</span></a></li>
            <!-- <li><a href="#" class="d-flex align-items-center"><span class="fa fa-history"></span><span class="menu-text">View past appointments</span></a></li>-->
            <li><a href="http://localhost:8080/Homeo/medical-record" class="d-flex align-items-center"><span class="fa fa-notes-medical"></span><span class="menu-text">View medical records</span></a></li>
            <li><a href="dashboard-disind.html" class="d-flex align-items-center"><span class="fab fa-discourse"></span><span class="menu-text">Discussion forum</span></a></li>
            <li><a href="#" class="d-flex align-items-center"><span class="fas fa-chart-pie"></span><span class="menu-text">Analytics</span></a></li>
            <li><a href="#" class="d-flex align-items-center"><span class="fas fa-user"></span><span class="menu-text">Profile settings</span></a></li>
          </ul>
        </div>
      </div>
    </aside>


    <main>
      <div class="jumbotron jumbotron-fluid jumbotron-sm">
        <div class="container">
              <img class="jumbotron-img" src="assets/images/logo.jpg" alt="">
              <h1 class="display-4">Home Amend</h1>
              <p class="lead">Like cures like</p>

          </div>
      </div>
      <br>
      <div class="container-fluid container-custom">
        <div class="row">
          <h1>Welcome,  ${name}</h1>
          
          <br>
        </div>
          <!-- <p>We all are travelers. This lifetime is yet another place that we are visiting for a while.</p>-->
          
        
        <br><hr><br>
         <h2>Your upcoming appointments </h2>
        <div class="row">
        
        <table border="3">
		<tr>
		<th>Case</th>
		<th>Date</th>
		<th>Time</th>
		
		</tr>
     
        <c:forEach var="current" items="${list}" >
        <tr>
          <td>${current[0]}</td>
          <td>${current[1]}</td>
           <td>${current[2]}</td>
        </tr>
      </c:forEach>
      </table>
        
               
          
        </div>
          

      </div>

    </main>
    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <script src="assets/js/dashboardMain.js"></script>
  </body>
</html>