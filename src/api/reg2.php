<?php
/**
 * @Author: Marte
 * @Date:   2018-11-13 20:21:48
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-25 23:17:15
 */
include 'connect.php';

$name=$_POST['name'];
$password=$_POST['password'];

$sql="INSERT INTO user(USERNAME,PASSWORD) VALUES('$name','$password')";

$res=$conn->query($sql);

// var_dump($res);
if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

$conn->close();    

?>