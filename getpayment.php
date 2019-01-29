<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";

$q = '"';

$ajax = json_decode( $_REQUEST['phpCall'] );
$qry_string = "SELECT * from payment where id={$ajax->id}";
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry = $Connection->query($qry_string);
echo "[";
$f = 0;
foreach($qry as $key => $value )
{
    if( $f ) echo ",";
    $f = 1;
    echo "[";
    echo "{$value['orderid']},";
    echo "{$value['paymentid']},";
    echo "{$q}{$value['date']}{$q},";
    echo "{$value['amount']},";
    echo '0,';
    if( $value['status'] )
    {
        echo "{$q}Complete{$q}";
    }
    else{
        echo "{$q}Pending{$q}";
    }
    echo "]";
}
echo "]";
?>