<?php
include('database/config.php');
include('user/database/users.php');

$database = new database();
$db = $database->getConnection();
$user = new users($db);

?>

<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
  a{
    color: #fff !important;
  }
</style>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  

  <title>Complaint Management System - Registeration</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
<style>
body{
  background: url('assets/register.jpg')!important;
  background-size:cover!important;;
  background-repeat: no-repeat!important;;

}

</style>
<link href="assets/favicon.ico" rel="icon" />
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
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register an Account</div>
      <div class="card-body">
        <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                <div class="form-label-group">
                  <input type="text" id="full_name" name='full_name' class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                  <label for="full_name">Full Name</label>
                </div>
                <!--TODO: need to add another input for last name and attach it with the backend -->
              </div>
              
              
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required="required">
              <label for="inputEmail">Email address</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required="required">
                  <label for="inputPassword">Password</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                  <label for="confirmPassword">Confirm password</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label>Register as: </label>
                  <select name="role" class="form-control">
                    <option value="user">User</option>
                    <option value="cloud_eng">Cloud Engineer</option>
                  </select>
              </div>
            </div>
          </div>
          <input type="submit" name="submit" class="btn btn-primary btn-block" value="Register">
        </form>
        <?php 
          if(isset($_POST['submit'])){
              $full_name = $_POST['full_name'];
              $email = $_POST['email'];
              $pass = md5($_POST['password']);
              $confirmPass = md5($_POST['confirmPassword']);
              $role = $_POST['role'];
              if($pass !== $confirmPass){
                die("Password is not match");
              }else{
                 if($role == 'user'){
                  $query = "INSERT INTO users (full_name,email,password)VALUES('$full_name','$email','$pass')";
                  }else{
                    $query = "INSERT INTO cloud_engineear (full_name,email,password)VALUES('$full_name','$email','$pass')";
                  }
                 $user->create_user($query);  
              }
          }
  
        ?>
        <div class="text-center">
          
          Already have an Account ?<a class="d-block small mt-3" href="login.php" style="color: green !important;">Login Here</a>
          
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
