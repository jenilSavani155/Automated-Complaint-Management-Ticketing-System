<?php
session_start();
if(isset($_SESSION['logged_in'])){
  header('location:user/index.php');
}

include('database/config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
  a{
    color: #fff !important;
  }
  body{
  background: url('assets/434458675.png')!important;
  background-size:cover!important;;
  background-repeat: no-repeat!important;;
  }
</style>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Complaint Management System - Our Clients</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
  <div class="col-md-12" style="display: flex;color: white">
    <div class="col-md-2">
       <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="" href="#">
      <a href="index.php"><i class="fas fa-bars"></i> HOME</a>
    </button>
  </div>
  <div class="col-md-2">
       <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="" href="login.php">
      <a href="register.php"><i class="fas fa-user"></i> REGISTER </a>
    </button>
  </div>
  <div class="col-md-2">
       <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="" href="our_client.php">
      <a href="our_client.php"><i class="fas fa-address-card"></i> OUR CLIENTS</a>
    </button>
  </div>

  <div class="col-md-2">
       <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="" href="login.php">
      <a href="login.php"><i class="fas fa-sign-in-alt"></i> LOGIN</a>
    </button>
  </div>
  <div class="col-md-2">
       <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="" href="about_us.php">
      <a href="about_us.php"><i class="fas fa-info"></i> ABOUT US</a>
    </button>
  </div>
  </div>
   
  </nav>


  <div class="container">
    
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
