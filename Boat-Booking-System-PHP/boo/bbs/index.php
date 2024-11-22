<?php session_start();
// Database Connection
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>WonderWave || Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Dancing+Script:400,700|Muli:300,400" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

  


    
    <?php include_once("includes/navbar.php");?>
    
    <div class="hero-slide owl-carousel site-blocks-cover">
      <div class="intro-section" style="background-image: url('images/y2.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-7 ml-auto text-right" data-aos="fade-up">
              <h1>Explore The Nature</h1>
          
              
            </div>
          </div>
        </div>
      </div>

      <div class="intro-section" style="background-image: url('images/t2.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-7 mx-auto text-center" data-aos="fade-up">
              <h1>Enjoy Book Camping with Us!</h1>
         
             
            </div>
          </div>
        </div>
      </div>

    </div>
    <!-- END slider -->

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="images/45.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-md-6">
            <h3 class="heading-92913 text-black">Welcome to WanderWave</h3>
            <p>Your next adventure starts here. Book the perfect camping spot, soak 
               in the vibes, and make memories under the stars. 🌟 Let's get outside! ⛺🌲</p>
            
          
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-image overlay" style="background-image: url('images/y2.jpg');">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="counter-39392">
              <h3>50+</h3>
              <span>Campsite Area</span>
            </div>
          </div>
          <div class="col">
            <div class="counter-39392">
              <h3>1000+</h3>
              <span>Customers Satisfied</span>
            </div>
          </div>
          <div class="col">
            <div class="counter-39392">
              <h3>50</h3>
              <span>Number of Staffs</span>
            </div>
          </div>
        
          <div class="col">
            <div class="counter-39392">
              <h3>589</h3>
              <span>Review</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <span class="text-serif text-primary">Destination</span>
            <h3 class="heading-92913 text-black text-center">Our Destinations</h3>
          </div>
        </div>
        <div class="row">
         <?php $query=mysqli_query($con,"select * from tblboat limit 6");
$cnt=1;
while($result=mysqli_fetch_array($query)){
?>
          <div class="col-md-6 col-lg-4 mb-4">
            <div class="service-39381">
              <img src="admin/images/<?php echo $result['Image'];?>" alt="Image"  width="350" height="200">
              <div class="p-4">
                <h3><a href="boat-details.php?bid=<?php echo $result['ID']; ?>"><span class="icon-room mr-1 text-primary"></span> <?php echo $result['Source']?> &mdash; <?php echo $result['Destination']?></a></h3>
                <div class="d-flex">
          
                  <div class="ml-auto price">
                    <span class="bg-primary">$<?php echo $result['Price']?></span>
                  </div>
                  
                </div>
              </div>
            </div>
          </div><?php $cnt++;} ?>
          
       

        </div>
      </div>
    </div>

    



    <div class="site-section bg-image overlay" style="background-image: url('images/y2.jpg');">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="text-white">Get In Touch With Us</h2>
            <p class="mb-0"><a href="contact.php" class="btn btn-warning py-3 px-5 text-white">Contact Us</a></p>
          </div>
        </div>
      </div>
    </div>

    <?php include_once("includes/footer.php");?>
    

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>