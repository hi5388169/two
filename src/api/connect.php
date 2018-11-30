<?php
/**
 * @Author: Marte
 * @Date:   2018-11-13 19:03:52
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 16:54:04
 */
$servername='localhost';
$username='root';
$parssword='';
$dbname='twostage';

$conn=new mysqli($servername,$username,$parssword,$dbname);

if($conn->connect_error){
    die("连接失败: " . $conn->connect_error);
}
 $conn->set_charset('utf8');

 // echo "连接成功";

?>