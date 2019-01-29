<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );

$qry_string = "INSERT INTO userorder (id,plan,date,time,location,phone) VALUES 
({$ajax->id},{$q}{$ajax->plan}{$q},{$q}{$ajax->date}{$q},{$q}{$ajax->time}{$q},
{$q}{$ajax->location}{$q},{$q}{$ajax->phone}{$q})";

$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);
$val;
if( $ajax->plan == 'Daily' ) $val = 6;
if( $ajax->plan == 'Monthly' ) $val = 108;
if( $ajax->plan == 'Emergency' ) $val = 20;
$qry_string = "SELECT * from userorder";
$orderid;
$qry = $Connection->query($qry_string);
echo "[";
$f = 0;
foreach($qry as $key => $value )
{
    if( $f ) echo ",";
    $f = 1;
    $orderid = $value['orderid'];
    echo "$orderid";

}
echo "]";
$qry_string = "INSERT INTO payment ( amount , orderid , id) VALUES ( {$val} , {$orderid}, {$ajax->id} )";
$qry = $Connection->query($qry_string);
?>