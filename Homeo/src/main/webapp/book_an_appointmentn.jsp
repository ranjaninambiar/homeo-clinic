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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- fa -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    
    <!-- Style -->
    <link rel="stylesheet" href="assets/css/dashboard-style.css">
    <link rel="stylesheet" href="assets/css/book_an_appointment.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <title>Homeo-Amend</title>
    <link rel="icon" type="image/x-icon" href="assets/images/logo.jpg">
</head>

<body>

  <!-- Header Starts Here--->
  <header>
      <div class="header-top">
          <div class="container">
              <div class="row">
                  <div class="col-lg-7 col-md-12 left-item">
                      <ul>
                          <li><i class="fas fa-envelope-square"></i> info@Homeo-Amend.in</li>
                          <li><i class="fas fa-phone-square"></i> +91 987 887 765</li>
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


      <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Homeo Amend</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Homeo/dashboard"><span class="fa fa-home"></span><span class="menu-text">Home</span></a></li>
              <li class="nav-item active"><a class="nav-link" href="book_an_appointmentn.jsp"><span class="fa fa-calendar-check"></span><span class="menu-text">Book an appointment</span></a></li>
              
              <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Homeo/medical-record" ><span class="fa fa-notes-medical"></span><span class="menu-text">View medical records</span></a></li>
              <li class="nav-item"><a class="nav-link" href="dashboard-disindex.html"><span class="fab fa-discourse"></span><span class="menu-text">Discussion forum</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#"><span class="fas fa-chart-pie"></span><span class="menu-text">Analytics</span></a></li>
             <!--  <li class="nav-item"><a class="nav-link" href="#"><span class="fas fa-user"></span><span class="menu-text">Profile settings</span></a></li>-->
              <li class="nav-item"><a class="nav-link" href="feedback.jsp" ><span class="fas fa-comment-medical"></span><span class="menu-text">Feedback</span></a></li>
          <li class="nav-item"><a class="nav-link" href="#"><span class="fas fa-user"></span><span class="menu-text"><h8>${name}</h8></span></a></li>
            </ul>
          </div>
      </nav>

  </header>

  <!-- content -->

  <form  onsubmit="return validateForm()"  method="get" action="http://localhost:8080/Homeo/book-appointment">
    <div class="boa">
        <div class="form">
            <div class="title">Welcome</div>
            <div class="subtitle">Make An Appointment</div>
                     
            <div class="input-container ic2">
                <input name="appointment-date" id="appointment-date" class="form-elements" required type="date" >
            </div>
            <div class="input-container ic2">
                <input name="appointment-time" id="appointment-time" class="form-elements" required type="time" min="09:00" max="18:00">
            </div>
            <div class="input-container ic2">
                <input name="reason" id="reason" class="form-elements" required="true" type="text" placeholder="Type of Issue"/>
            </div>
            <div class="input-container ic2">
                <input name="Message" id="Message" class="form-elements" type="text" placeholder="Enter Your Message"/>
            </div>
            <select class="input-field" name="doctor" >
                        <option value="" disabled selected>Select your preferred consultant</option>
                        <option value="Dr. Sara">Dr. Sara</option>
                        <option value="Dr. Kalyan">Dr. Kalyan</option>
                        <option value="Dr. Sakshi">Dr. Sakshi</option>
                        <option value="Dr. Sanjay">Dr. Sanjay</option>
                    </select>
            <div class="input-container ic2">
            <input type="submit" value="submit" class="btn solid">
            </div>
        </div>
    </div>
    </form>
  
  
  <!-- Footer --->

  <footer class="footer">
      <div class="copy">
          <div class="container">
              <a href="#">Designed and Developed by NCPG13</a>
              
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


<script>
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; 
  var yyyy = today.getFullYear();
  if(dd<10){
    dd='0'+dd
  } 
  if(mm<10){
    mm='0'+mm
  } 
  
  today = yyyy+'-'+mm+'-'+dd;
  maxdate=yyyy+'-'+mm+'-'+(dd+7)%31;
  document.getElementById("appointment-date").setAttribute("min", today);
  document.getElementById("appointment-date").setAttribute("max", maxdate);
  
    function validateForm()
    {
      var em=document.getElementById("email").value;
      var fName=document.getElementById("firstname").value;
      var Contact=document.getElementById("Contact").value;
      if(validateFname(fName)&&validateEM(em) )
      {
        alert("Input validation successfully")
        return true
      }
      else{
        return false
      }
    }
    function validateCnt(Contact)
    {
      //var regex=/^(7\d|8\d|9\d|6\d)\d{9}+$/
      if(Contact.length != 10){
          alert("Incorrect Phone Number! \nEnter a valid number");
          return false;
        }
      if(!regex.test(Contact)) {
          alert("Incorrect Contact! \nEnter a valid number");
          return false;
      }
        return true
    }
    function validateEM(un)
    {
      if(un.endsWith("@gmail.com"))
        return true;
      else if(un=="")
      {
        alert("Incorrect Email! \nEmpty Email")
        return false;
      }
      else
      {
        alert("Incorrect Email! \nNot a Valid Email")
        return false;
      }
    }
    function validateFname(fn)
    {
      var regex = /^[a-z ,.'-]+$/i
    
      if(fn == "")
      {
        alert("Incorrect Name! \nName Should not be empty")
        return false;
      }
      if(!regex.test(fn))
      {
        alert("Incorrect Name! \nName can only contain alphabets, comma, period, apostrophe, hyphen")
        return false;
      }
      return true
    }
    </script>
</html>