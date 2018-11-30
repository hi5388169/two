<?php
/**
 * @Author: Marte
 * @Date:   2018-11-29 11:20:18
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 23:14:41
 */
include 'connect.php';

$id=isset($_GET['id']) ? $_GET['id'] : '5';
// echo $id ;
$num=isset($_GET['num']) ? $_GET['num'] : '6';

$username=isset($_GET['username']) ? $_GET['username'] : '18270815311';

$sql="select * from orderlist where goodsid='$id' and username='$username'";
// echo $sql;
$res=$conn->query($sql);
// var_dump($res);
$re=$res->fetch_all(MYSQLI_ASSOC);
// var_dump($sql);
$goodsnum=$re[0]['goodsnum'];
$goodsnum=$num;
$goodsprice=$re[0]['goodsprice'];
$total=$goodsnum*$goodsprice;
// echo $total;

$sql1="update orderlist set goodsnum='$goodsnum',goodstotal='$total' where goodsid='$id' and username='$username'";

$res1=$conn->query($sql1);

$sql2="select * from orderlist where username='$username'";

$res2=$conn->query($sql2);

$re2=$res2->fetch_all(MYSQLI_ASSOC);

echo json_encode($re2,JSON_UNESCAPED_UNICODE);



$conn->close();