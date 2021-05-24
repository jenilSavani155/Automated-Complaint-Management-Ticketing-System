<?php
session_start();
if(isset($_SESSION['logged_in'])){
  header('location:user/index.php');
}
error_reporting(0);
include('database/config.php');
include('user/database/users.php');
include('admin/database/admin.php');
include('cloud_eng/database/cloud_eng.php');

$database = new database();
$db = $database->getConnection();
$user = new users($db);
$admin = new admin($db);
$cloud_eng = new cloud_eng($db);

?>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
body{
  background: url('assets/complaint.png')!important;
  background-size:cover!important;;
  background-repeat: no-repeat!important;;

}
 a{
    color: #fff !important;
  }

</style>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Complaint Management System - Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body style="background-color: #dc3545 !important;" class="bg-red">
<nav style="background-color: #dc3545 !important;" class="navbar navbar-expand navbar-dark bg-red static-top">
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
    <div class="card card-login mx-auto mt-5">
      <div class="card-header bg-warning">Login</div>
      <div class="card-body">
        <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="inputEmail" class="form-control" name="email" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">Email</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required="required">
              <label for="inputPassword">Password</label>
            </div>
          </div>
          <label>Login as: </label>
            <select name="role" class="form-control">
              <option value="user">User</option>
              <option value="admin">Admin</option>
              <option value="cloud_eng">Cloud Engineear</option>
            </select>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" name="remember_login">
                Remember Password
              </label>
            </div>
            
          </div>
          <input type="submit" class="btn btn-success btn-block" name="submit" value="Login">
        </form>
        <div class="text-center">

          <?php 


            if(isset($_POST['submit'])){
                $email = $_POST['email'];
                $password = md5($_POST['password']);

                if(!empty($_POST['remember_login'])){
                  setcookie('email',$email,time()+3600);
                  setcookie('pwd',$password,time()+3600);
                }

                $role = $_POST['role'];

                switch($role){
                  case 'user':
                    $user->login($email,$password);
                  break;
                  case 'admin':
                    $admin->login($email,$password);
                  case 'cloud_eng':
                      $cloud_eng->login($email,$password);
                  break;
                  default:
                    echo "Please select the correct role";
                    break;
                }
                
              }



          ?>
          <a class="d-block small mt-3" href="register.php" style="color: blue !important;">Register an Account</a>
          
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
