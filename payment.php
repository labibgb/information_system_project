<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );
$qry_string = "SELECT COUNT(plan) as ans FROM userorder where id={$ajax->id} AND plan={$q}{$ajax->plan}{$q}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);
foreach( $qry as $key => $value ) {
    echo "{";
    echo "{$q}count{$q}:{$value['ans']}";
    echo "}";
    return;
}
echo "{";
echo "{$q}count{$q}:0";
echo "}";

?>