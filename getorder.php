<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );
$qry_string = "SELECT * FROM userorder where id={$ajax->id}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);
$flg = 0;
echo "[";
foreach( $qry as $key => $value )
{
    $flg = 1;
    if( $key > 0 ) echo ",";
    echo "[";
    echo "{$value['orderid']},";
    echo "{$q}{$value['plan']}{$q},";
    echo "{$q}{$value['date']}{$q},";
    if( $value['status'] == null )
    {
        echo "{$q}Pending{$q}";
    }
    else{
        echo "{$q}Complete{$q}";
    }
    echo "]";
}
echo "]";
if( $flg == 0 ){
    echo "{";
    echo "{$q}orderid{$q}:{0}";
    echo "}";
}
?>