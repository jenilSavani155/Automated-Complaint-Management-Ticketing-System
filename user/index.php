<?php 
session_start();
error_reporting(0);
	if(!isset($_SESSION['user_logged_in'])){
		header('location:../index.php');

	}
	
	
	include('database/config.php');
	include('../database/complaint.php');
	include('database/category.php');
	
		$database = new database();
		$db = $database->getConnection();
		$category = new category($db);
		$id=$_SESSION['uid'];
		$complaint = new complaint($db);
	    $query = "SELECT * FROM complaints WHERE user_id=$id AND status = 'in process' ";
		$complaints_in_process = $complaint->get_complaints_by_uid($query);
		$complaints_in_process = count($complaints_in_process);

		
		$query = "SELECT * FROM complaints WHERE user_id=$id AND status = 'closed' ";
		$complaints_close = $complaint->get_complaints_by_uid($query);
		$complaints_close = count($complaints_close);
		
		$query = "SELECT * FROM complaints WHERE user_id=$id AND status IS NULL ";
		$complaints_null= $complaint->get_complaints_by_uid($query);
		$complaints_null = count($complaints_null);
		
	?>
<?php include('include/header.php'); ?>
<body>
<div class="container">
	
		
			<div style="background-color: #dc3545 !important;" class="row border top-navbar bg-red text-light p-2">
				<h4>Complaint Management System</h4>

			</div>
			
	<div class="row border bg-light p-2">

		<div class="col-6">
		<h1>Hello <?php echo $_SESSION['full_name']; ?></h1>
		<p><?php echo date('D,F,Y'); ?></p>
		</div>
		<div class="col-sm-2">

			<p class="side-tabs" id=""><span><?php echo $complaints_null; ?></span><span>&nbsp;</span><i class="fas fa-lg fa-newspaper"></i><br>Not yet processed complaints</p>
		</div>
		<div class="col-sm-2">
			<p class="side-tabs" id=""><span><?php echo $complaints_in_process; ?></span><span>&nbsp;</span><i class="fas fa-lg fa-newspaper"></i><br> Complaints that are in process</p>
		</div>
		<div class="col-sm-2">
			<p class="side-tabs" id=""><span><?php echo $complaints_close; ?></span><span>&nbsp;</span><i class="fas fa-lg fa-newspaper"></i><br> Complaints that have been closed</p>
		</div>
	</div>
	
	<div class="row tabs-area bg-light shadow pl-0">
		<div class="col-sm-2">
			<p class="side-tabs active" id="dashboard"><i class="fas fa-fw fa-lg fa-tachometer-alt"></i><br>Dashboard</p>
			<p class="side-tabs" id="lodge-complaint"><i class="fas fa-lg fa-pen"></i><br>Complaint</p>
			<p class="side-tabs" id="complaint-history"><i class="fas fa-lg fa-list"></i><br>Complaint History</p>
			<p class="side-tabs" id="setting"><i class="fas fa-lg fa-cog"></i><br>Acount Setting</p>
			<p class="side-tabs" id="faq"><i class="fas fa-lg fa-question-circle"></i><br>FAQ</p>
			<a href="logout.php?logout=logout"><p class="side-tabs"><i class="fas fa-lg fa-sign-out-alt"></i><br>Logout</a></p>
		</div>

	<div class="col-sm-10" id="content">
		<h2>Welcome to our system</h2>
		<hr>
		<h5>Here you can create your complain. </h5>
		<center><img src="../assets/Data-Management.png" style="height: 76vh;"></center>
	</div>

	</div>
		
	
	<footer style="background-color: #dc3545 !important;" class="footer text-center bg-red text-light">Copyright all reserved</footer>
</div>
</body>
</html>


<script type="text/javascript" src="../vendor/jquery/jquery.min.js"></script>

<script>
	$(document).ready(function(){
		$('.side-tabs').click(function(){
			var tab = $(this).attr('id');
			switch(tab){
				case 'dashboard':
					$('#content').load('include/dashboard.php');
					break;
				case 'lodge-complaint':
					$('#content').load('include/lodge_complaint.php');
					break;
				case 'complaint-history':
					$('#content').load('include/complaint_history.php');
					break;
				case 'setting':
					$('#content').load('include/account_setting.php');
					break;
					case 'faq':
					$('#content').load('include/faq.php');
					break;
				default:
					$('#content').load('include/dashboard.php');
					break;

			}
			$('.side-tabs').removeClass('active');
			$(this).addClass('active');
		});
	});

</script>