<?php
/**
 * @Author: Marte
 * @Date:   2018-11-26 20:41:52
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-26 21:00:05
 * 
 */
include 'connect.php';

$img='../img/11f.jpg';
$array = array();
$sql="select * from main where floorImg='$img'";

$data=$conn->query($sql);
// $res=$data->fetch_all(MYSQLI_ASSOC);


$res=$data->fetch_all(MYSQLI_ASSOC);
$size=count($res);
for($i=0;$i<$size;$i++){
    $img=$res[$i]['img'];
}
var_dump($res);