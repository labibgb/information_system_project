<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );

$qry_string = "UPDATE userinfo  
SET firstname={$q}{$ajax->firstname}{$q},email={$q}{$ajax->email}{$q},street={$q}{$ajax->street}{$q},
state={$q}{$ajax->state}{$q},city={$q}{$ajax->city}{$q},zip={$q}{$ajax->zip}{$q},newpass={$q}{$ajax->newpassword}{$q} WHERE id={$ajax->id}";

$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

?>