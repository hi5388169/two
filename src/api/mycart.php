<?php
/**
 * @Author: Marte
 * @Date:   2018-11-29 09:44:14
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 09:52:08
 */
include 'connect.php';

$username=isset($_POST['username']) ? $_POST['username'] : '18270815396';
$sql="select * from orderlist where username=$username";

$res=$conn->query($sql);

$row=$res->num_rows;
// echo $row;
$data=$res->fetch_all(MYSQLI_ASSOC);

$obj=array(
    'length'=>$row,
    'content'=>$data
);
echo json_encode($obj,JSON_UNESCAPED_UNICODE);