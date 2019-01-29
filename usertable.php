<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";
$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry_string = "SELECT * FROM userinfo";

$qry = $Connection->query($qry_string);
echo "[";
$f = 0;
foreach( $qry as $key => $value )
{
    if( $f ) echo ",";
    $f = 1;
    echo "[";
    echo "{$value['id']},";
    echo "{$q}{$value['firstname']}{$q},";
    echo "{$q}{$value['email']}{$q},";
    echo "{$q}{$value['street']}, {$value['city']}, {$value['state']}{$q}";
    echo "]";
}
 echo "]";
?>