






<?php

include('../../../partials/_dbconnect.php');

$estado = $_POST['estado'];

		
		$sql = "SELECT * FROM relatoriopsg WHERE estado = '$estado' ORDER BY curso";
		$result = mysqli_query($conn, $sql);

		
		


		$arr_json = [];
		$contador = 0;

		$str = '';
		
		if($result){
			while($row = mysqli_fetch_array($result)){
				$arr_json[$contador] = ['curso' => $row["curso"], 'ch_meta' => $row["ch_meta"], 'ch_curso' => $row["ch_curso"], 'matriculas_meta' => $row["matriculas_meta"], 'saldo_matriculas' => $row["saldo_matriculas"], 'porcentagem_execucao' => $row["porcentagem_execucao"], 'estado' => $row["estado"]];
				$contador++;
				$str = $str . '<tr>
									<td>'.$row["curso"].'</td>
									<td>'.$row["ch_meta"].'</td>
									<td>'.$row["ch_curso"].'</td>
									<td>'.$row["matriculas_meta"].'</td>
									<td>'.$row["saldo_matriculas"].'</td>
									<td>'.$row["porcentagem_execucao"].'</td>
									<td>'.$row["estado"].'</td>
									<td>março</td>
									<td>2023</td>
								</tr>';			
			}

			echo $str;
		
			//echo json_encode($arr_json);  

			             
		}

		mysqli_close($conn);
	



?>
