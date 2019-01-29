<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "beta_crow";
$ajax = json_decode( $_REQUEST['phpCall'] );

$q = '"';
$Connection = mysqli_connect($GLOBALS['servername'], $GLOBALS['username'], $GLOBALS['password'],$GLOBALS['dbname']);
$qry_string = "SELECT userinfo.id, userorder.orderid,payment.paymentid, userorder.plan, userorder.date, userorder.time,userorder.location,userorder.phone,userorder.status as ustatus ,payment.status as pstatus FROM userinfo JOIN userorder JOIN payment on userinfo.id=userorder.id and payment.id=userorder.id and payment.orderid=userorder.orderid";

$qry = $Connection->query($qry_string);
echo "[";
$f = 0;
foreach( $qry as $key => $value )
{
    if( $f ) echo ",";
    $f = 1;
    echo "[";
    echo "{$value['id']},";
    echo "{$value['orderid']},";
    echo "{$value['paymentid']},";
    echo "{$q}{$value['plan']}{$q},";
    echo "{$q}{$value['date']}{$q},";
    echo "{$q}{$value['time']}{$q},";
    echo "{$q}{$value['location']}, {$value['phone']}{$q},";
    if( $value['ustatus'] )
    {
        echo "{$q}Complete{$q},";
    }
    else{
        echo "{$q}Pending{$q},";
    }
    if( $value['pstatus'] )
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