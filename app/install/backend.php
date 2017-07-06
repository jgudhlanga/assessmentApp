<?php
error_reporting(E_ERROR);

/*
 * this function accepts a $_REQUEST
 * @param array $credentials => $_REQUEST
 * @return string message
 */
function createDatabase($credentials = []){
	$dbHost = (isset($credentials['db_host']) && $credentials['db_host'] != '') ? $credentials['db_host'] : 'localhost';
	$dbUser = (isset($credentials['db_user']) && $credentials['db_user'] != '') ? $credentials['db_user'] : 'root';
	$dbPass = (isset($credentials['db_pass']) && $credentials['db_pass'] != '') ? $credentials['db_pass'] : '';
	$dbName = (isset($credentials['db_name']) && $credentials['db_name'] != '') ? $credentials['db_name'] : 'assessment_app';

	if(!(extension_loaded('mysqli'))){
		return "Mysqli-Error: For this script to run enable/install mysqli extension in your php.ini configurations";
	}
	// try to connect to the DB, if not return error
	$cn = new Mysqli($dbHost, $dbUser, $dbPass);
	$message = '';
	if(!($cn->connect_error)){
		if($cn->select_db($dbName)){
			$message =  "Database '$dbName' already exists";
		}
		else{
			//create the database
			$sql = "CREATE Database $dbName";
			if($cn->query($sql) === TRUE){
				//select the database
				$cn->select_db($dbName);
				//create the tables and import sample data
				$sqlSource = file_get_contents('app.sql');
				$cn->multi_query($sqlSource);
				$message = " Database and tables successfully created ";
			}
			else{
				$message = "Mysqli-Error: ".$cn->error;
			}
		}
	}
	else{
		$message = "Mysqli-Error: Mysql failed to connect ".$cn->connect_error;
	}
	return $message;
};


$dbHost = (isset($_REQUEST['db_host']) && $_REQUEST['db_host'] != '') ? $_REQUEST['db_host'] : 'localhost';
$dbUser = (isset($_REQUEST['db_user']) && $_REQUEST['db_user'] != '') ? $_REQUEST['db_user'] : 'root';
$dbPass = (isset($_REQUEST['db_pass']) && $_REQUEST['db_pass'] != '') ? $_REQUEST['db_pass'] : '';
$dbName = (isset($_REQUEST['db_name']) && $_REQUEST['db_name'] != '') ? $_REQUEST['db_name'] : 'assessment_app';
$appUrl = (isset($_REQUEST['app_url']) && $_REQUEST['app_url'] != '') ? $_REQUEST['app_url'] : 'http://localhost:8765';

$message = $showClass = '';
$hideClass = $showRedirect = 'display-none';

if(isset($_REQUEST['command'])){
	$showClass = 'display-none';
	$hideClass = '';
	$message = createDatabase($_REQUEST);
	if(strpos($message, 'Mysqli-Error:') === FALSE){
		$showRedirect = '';
	}
}
