<?php
/**
 * @Author: Marte
 * @Date:   2018-11-27 20:46:07
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-27 21:00:51
 */include 'connect.php';

$id=isset($_GET['id']) ? $_GET['id'] : '';

$sql="SELECT * FROM product where id='$id'";

$data=$conn->query($sql);

$res=$data->fetch_all(MYSQLI_ASSOC);

echo json_encode($res,true);


$conn->close();