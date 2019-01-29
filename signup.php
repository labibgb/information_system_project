<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );

$qry_string = "INSERT INTO userinfo (username,firstname,email,street,state,city,zip,newpass) VALUES 
({$q}{$ajax->user}{$q},{$q}{$ajax->firstname}{$q},{$q}{$ajax->email}{$q},{$q}{$ajax->street}{$q},
{$q}{$ajax->state}{$q},{$q}{$ajax->city}{$q},{$q}{$ajax->zip}{$q},{$q}{$ajax->newpassword}{$q})";

$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

echo "done";
?>