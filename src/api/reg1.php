<?php
/**
 * @Author: Marte
 * @Date:   2018-11-13 19:03:00
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-25 23:10:07
 */
include 'connect.php';
// $name=$_POST['name'];
// $password=$_POST['password'];

$name=isset($_GET['name']) ? $_GET['name'] : '';
// $password=isset($_POST['password']) ? $_POST['password'] : '' ;

// echo $name;

$sql="select * from user where username=".$name;
 // var_dump($sql); 

$data=$conn->query($sql);

// var_dump($data); 

if(($data->num_rows)>0){
    echo 0;//存在
}else{
    echo 1;//不存在
}

// $data->close();
    $conn->close();

?>