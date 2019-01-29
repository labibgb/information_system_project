<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";
$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$qry_string = "SELECT * FROM adminpanel WHERE username={$q}{$ajax->user}{$q} AND pass={$q}{$ajax->pass}{$q}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);
foreach( $qry as $key => $value )
{
    echo "1";
    return;
}
echo "0";
?>