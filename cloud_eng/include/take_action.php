<?php
if(isset($_GET['cid'])){
	$id = $_GET['cid'];
}
?>
<tabl

<?php
	if(isset($_POST['submit'])){
		$cid = $_POST['id'];
		$status = $_POST['status'];
		$remark = $_POST['remark'];
		$query = "INSERT INTO complaintremark(complaintNo,status,remark)VALUES($cid,'$status','$remark')";
		$query2 = "UPDATE complaints SET status='$status' WHERE complaintNo=$cid";
		$complaint->executeQuery($query);
		$complaint->executeQuery($query2);

		echo "Status is updated successfully";
	}
?>