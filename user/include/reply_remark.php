<?php
$server= "localhost";
$user = "root";
$password = "";
$db = "complaint";
// Create connection
$conn = new mysqli($server, $user, $password, $db);
// Check connection
if ($conn->connect_error)
{
die("Connection failed: " . $conn->connect_error);
}



if(isset($_POST['id'])){
		$cid = $_POST['id'];
		$reply = $_POST['reply'];
		$query = "INSERT INTO complaintremark (complaintNo,user_remark)VALUES($cid,'$reply')";
		$result = mysqli_query($conn,$query);
		if ($result) {
					echo "Remark is updated successfully";
		}
		else{
					echo "Remark not updated".$query;
		}
		//return $result;
		
		//$query2 = "UPDATE complaints SET status='$status' WHERE complaintNo=$cid";
		// $complaint->executeQuery($query);
		//$complaint->executeQuery($query2);


}
?>
