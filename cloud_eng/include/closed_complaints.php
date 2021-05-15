<?php
$database = new database();
$db = $database->getConnection();
$complaint = new complaint($db);
$query = "SELECT * FROM complaints WHERE cloud_eng_id=$uid AND status='closed'";
$complaints = $complaint->get_data($query);

?>
<h3>Closed Complaints</h3>
<hr>
<?php if(!empty($complaints)){?>
<table class="table table-bordered table-sm" id="myTable">
	<thead>
		<tr>
			<td>Complaint Number</td>
			<td>Complaint Title</td>
			<td>Department</td>
			<td>Regd Date</td>
			<td>Status</td>
			<td>Action</td>
		</tr>
	</thead>
	<?php foreach($complaints as $cmp): ?>
	<tbody>
		<tr>
			<td><?php echo $cmp->complaintNo; ?></td>
			<td>
				<?php echo $cmp->complaint_title; ?>			
				</td>
			<td>
			     <?php echo $cmp->department; ?>		
			</td>
			<td><?php echo $cmp->rgdDate ?></td>
			<td align="center"><button class="btn btn-sm btn-success">closed</button></td>
			<td><a href="index.php?page=complaint_detail&cid=<?php echo $cmp->complaintNo; ?>">view details</a></td>
		</tr>
	</tbody>
	<?php endforeach; }else{ echo "No closed complaints"; } ?>
</table>

<script>
$(document).ready(function(){
	$('#myTable').DataTable();
});
</script>