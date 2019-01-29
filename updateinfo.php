<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";
$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry_string = "UPDATE userorder SET status={$ajax->order} WHERE id={$ajax->userid} AND orderid={$ajax->orderid}";
$qry = $Connection->query($qry_string);
$qry_string = "UPDATE payment set status={$ajax->payment},date={$q}{$ajax->date}{$q} where id={$ajax->userid} AND orderid={$ajax->orderid}";
$qry = $Connection->query($qry_string);
echo "$qry";
?>