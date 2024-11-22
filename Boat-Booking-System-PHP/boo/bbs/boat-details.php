<?php session_start();


include('includes/config.php');
error_reporting(0);

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>WanderWave || Home Page</title>
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
    
    <div class="intro-section" style="background-image: url('images/y2.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-7 mx-auto text-center" data-aos="fade-up">
              <h1>Our Services</h1>
              <p><a href="#" class="btn btn-primary py-3 px-5">Contact</a></p>
            </div>
          </div>
        </div>
      </div>
    
    <div class="site-section">
      <div class="container">
        <?php 
$bid=$_GET['bid'];
$query = mysqli_query($con, "SELECT * FROM tblboat WHERE ID='$bid'");
$cnt=1;
while($result=mysqli_fetch_array($query)){
?>
        <div class="row">
          <div class="col-md-7">
            <p><img src="admin/images/<?php echo $result['Image'];?>" alt="Image" class="img-fluid"></p>
          </div>
          <div class="col-md-5">
            
            <h3 class="heading-92913 text-black">Details</h3>
                <p><strong>Place Name:</Strong>  <?php echo $result['BoatName'];?></p>
                <p><strong>Ft.square:</Strong>  <?php echo $result['Size'];?></p>
                <p><strong>Capacity:</Strong>  <?php echo $result['Capacity'];?></p>
                <p><strong>Sources:</Strong>  <?php echo $result['Source'];?></p> 
                <p><strong>Destination: <?php echo $result['Destination'];?></strong> </p>
                <p><strong>Route: <?php echo $result['Route'];?></strong> </p>
                <p><strong>Price: <?php echo $result['Price'];?>MYR (per head)</strong> </p>
                <p><strong>Description: <?php echo $result['Description'];?></strong> </p>

              
              <div class="form-group col-md-12">
              
                <a href="book-boat.php?bid=<?php echo $result['ID']; ?>"  class="btn btn-primary py-3 px-5">
                 Book Now</a>
              </div>

            
          </div>
        </div>
      </div><?php } ?>
    </div>
    

    <div class="site-section bg-image overlay" style="background-image: url('images/hero_2.jpg');">
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