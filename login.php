<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";
$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';

$qry_string = "SELECT * FROM userinfo WHERE username={$q}{$ajax->user}{$q} AND newpass={$q}{$ajax->pass}{$q}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);

//echo "{$_REQUEST['phpCall']}";
//echo $qry_string;
foreach( $qry as $key => $value ) {
    echo "{";
    echo "{$q}id{$q}:{$value['id']},";
    echo "{$q}username{$q}:{$q}{$value['username']}{$q},";
    echo "{$q}name{$q}:{$q}{$value['firstname']}{$q},";
    echo "{$q}email{$q}:{$q}{$value['email']}{$q},";
    echo "{$q}street{$q}:{$q}{$value['street']}{$q},";
    echo "{$q}state{$q}:{$q}{$value['state']}{$q},";
    echo "{$q}city{$q}:{$q}{$value['city']}{$q},";
    echo "{$q}zip{$q}:{$q}{$value['zip']}{$q},";
    echo "{$q}password{$q}:{$q}{$value['newpass']}{$q}";
    echo "}";
    return;
}
echo "{";
echo "{$q}id{$q}:0";
echo "}";
?>