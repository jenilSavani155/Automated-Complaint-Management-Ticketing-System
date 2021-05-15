<?php

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