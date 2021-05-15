<h4>All Complaints</h4>
<hr>
<?php
$database = new database();
$db = $database->getConnection();
$complaintsObj = new complaint($db);
$query = "SELECT * FROM  complaints WHERE cloud_eng_id=$uid";
$complaints = $complaintsObj->get_data($query);

?>


<?php if(!empty($complaints)){?>
<table class="table table-bordered table-sm" id="myTable">
	<thead>
		<tr>
			<td>complaint No</td>
			<td>Complaint Title</td>
			<td>Department</td>
			<td>Complaint Detaile</td>
			<td>status</td>
			
		</tr>
	</thead>
	<?php foreach($complaints as $u): ?>
	<tbody>
		<tr>
			<td><?php echo $u->complaintNo; ?></td>
			<td><?php echo $u->complaint_title; ?></td>
			<td><?php echo $u->department; ?></td>
			<td><?php echo $u->complaint_detail; ?></td>
			<td><?php echo $u->status; ?></td>
			
		</tr>
	</tbody>
	<?php endforeach; }else{ echo "No complaints"; }?>
</table>



<script>
$(document).ready(function(){
	$('#myTable').DataTable();
});
</script>