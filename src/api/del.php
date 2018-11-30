<?php
/**
 * @Author: Marte
 * @Date:   2018-11-29 16:36:35
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 17:54:34
 */
include 'connect.php';

$id=isset($_GET['id']) ? $_GET['id'] : '14';
$username=isset($_GET['username']) ? $_GET['username'] : '18270815311';
$sql="DELETE FROM orderlist WHERE goodsid = $id and username='$username'";
// echo $sql;
$data=$conn->query($sql);

$sql2="select * from orderlist where username='$username'";
// echo $sql2;
$data2=$conn->query($sql2);

$res=$data2->fetch_all(MYSQLI_ASSOC);


echo json_encode($res,JSON_UNESCAPED_UNICODE);

