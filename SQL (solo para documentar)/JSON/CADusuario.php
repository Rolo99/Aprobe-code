<?php  

	class CADusuario{

		private $con;
		private $query;
		private $result;



		public function __construct(){
			include('connection.php');	
			$this->con = new mysqli($host,$user,$pwd,$db) or die("No se conecto a la base de datos");
			mysql_query("SET NAMES 'utf8'");
			$this->query="";
			$this->result="";
		}


		function consular_Matricula(){	
			$this->query = "SELECT * FROM vw_leermatricula";
			$this->result = mysqli_query($this->con,$this->query) //— Performs a query on the database
			or die(mysqli_error($db));

			if($this->result === FALSE){
				trigger_error('Query failed returning error: '.mysql_error(),E_USER_ERROR);
			} else
			{
				return  $this->result ;//the ced column
			}
		}

	}

?>