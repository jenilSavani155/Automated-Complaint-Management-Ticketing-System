<?php
$database = new database();
$db = $database->getConnection();
$complaint = new complaint($db);
$query = "SELECT * FROM complaints WHERE status is null";
$complaints = $complaint->get_data($query);


if(isset($_REQUEST['complaint_id']) && $_REQUEST['complaint_id'] != '')
{
	$eng_id = $_REQUEST['selected_eng'];
	$complaint_id = $_REQUEST['complaint_id'];

	$q = "UPDATE cloud_engineear SET complaint_number = $complaint_id,status='on_work' where id= $eng_id";
	echo $res = $complaint->executeQuery($q);
}
?>
<h3>Not processed yet Complaints</h3>
<hr>
<?php if(!empty($complaints)){ ?>
<table class="table table-bordered table-sm" id="myTable">
	<thead>
		<tr>
			<td>Complaint Number</td>
			<td>Complainant Name</td>
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
			<?php
			 	$query1="SELECT * FROM users WHERE uid=$cmp->user_id";
			 	$result = $complaint->get_data($query1);
			 	foreach($result as $res){
			 		echo $res->fullName;
			 	}

			 ?>
				
			</td>
			<td><?php echo $cmp->rgdDate ?></td>
			<td align="center"><button class="btn btn-sm btn-danger">Not process yet</button></td>
			<td align="center" onclick="setTaskId(<?php echo $cmp->complaintNo; ?>)"><button data-toggle="modal" data-target="#assign_task_modal" class="btn btn-info" id="assign_task" >Assign Task</button> <a href="index.php?page=complaint_detail&cid=<?php echo $cmp->complaintNo; ?>">&nbsp; &nbsp;<button class="btn btn-primary">view details</button></a></td>
		</tr>
	</tbody>
	<?php endforeach; }else { echo "No complaints";	} ?>
</table>

<div class="modal fade" id="assign_task_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Choes the cloud engineear</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  <form method="post">
      <div class="modal-body">
	  <input type="hidden" name="complaint_id" id="complaint_id" value="">
        <?php 
				$getEng="SELECT * FROM cloud_engineear WHERE status='Free'";
				$engData = $complaint->get_data($getEng);
				?>
			<select class="form-control" name="selected_eng">
			<option value="">select engineear</option>
				<?php 
				foreach($engData as $res){
					echo "<option value=".$res->id.">";
					echo $res->first_name." ".$res->last_name;
					echo "</option>";
				}
			?>
			<select>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Assign</button>
      </div>
	  </form>
    </div>
  </div>
</div>

<script>
$(document).ready(function(){
	$('#myTable').DataTable();
	
});
function setTaskId(id)
{
	$('#complaint_id').val(id);

}
</script>