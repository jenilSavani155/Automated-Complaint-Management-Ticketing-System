<?php
class complaint{
	private $db;
	public function __construct($link){
		$this->db = $link;
	}
y complaint yet";
		}
	}

	public function get_data($query){
		$result = $this->executeQuery($query);
		if($result->num_rows > 0){
			while($row = $result->fetch_object()){
				$data[] = $row;
			}
			return $data;
		}
	}


}


?>