<?php  
	class CADusuario{

		private $con;
		private $query;
		private $result;

		public function __construct(){
			include('connection.php');	

			$this->con = mysqli_connect($host,$user,$pwd,$db) or die("No se conecto a la base de datos");
			$this->query="";
			$this->result="";
		}

		//inserta un administrador en la base de datos
		function crear_comiteBecas($ced,$pass){

			$this->query = "CALL CrearComiteBecas_sp('$ced','$pass')";
			$this->result = mysqli_query($this->con,$this->query);

			if($this->result === FALSE){
				 trigger_error('Query failed returning error: '. mysql_error(),E_USER_ERROR);
			} else {	
				return  true;
			}
		}

		function consular_comiteBecas(){

			$this->query = "SELECT * FROM LeerCedComiteBecas_vw";
			$this->result = mysqli_query($this->con,$this->query);

			if($this->result === FALSE){
				trigger_error('Query failed returning error: '.mysql_error(),E_USER_ERROR);
			}else{
				$ced = mysqli_fetch_array($this->result);
				return $ced[0];//the ced column
			}
		}

	}

?>