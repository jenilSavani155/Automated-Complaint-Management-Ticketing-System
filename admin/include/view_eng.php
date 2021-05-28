<?php
if(isset($_GET['uid'])){
	$uid= $_GET['uid'];
	$query = "SELECT * FROM cloud_engineear WHERE id=$uid";
	$user = $complaint->get_data($query);
	foreach($user as $u){
		$u->full_name;
	}


}

?>
<div class="row">
	<div class="col-6">
	<?php 
		if(!empty($u->profilePhoto)){ ?>
			<img src="../user/profile/<?php echo $u->profilePhoto;?>" width="70" style="float:left;"><br>
	<?php	}else{	?>
		<img src="../user/profile/dummy-profile.jpg" width="70" style="float:left;"><br>
	<?php } ?>
<h4> <?php echo $u->full_name; ?>'s Profile</h4><br>
<table class="table table-sm">
	<tr>
		<td><strong>User Id:</strong></td>
		<td><?php echo $u->id; ?></td>
	</tr>
	<tr>
		<td><strong>Full Name:</strong></td>
		<td><?php echo $u->full_name; ?></td>
	</tr>
	<tr>
		<td><strong>Email:</strong></td>
		<td><?php echo $u->email; ?></td>
	</tr>
	
</table>
</div>
</div>