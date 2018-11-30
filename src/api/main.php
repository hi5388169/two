<?php
/**
 * @Author: Marte
 * @Date:   2018-11-13 19:03:00
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-26 22:02:58
 */
include 'connect.php';
// $name=$_POST['name'];
// $password=$_POST['password'];

$floor=isset($_GET['floor']) ? $_GET['floor'] : '';
// $password=isset($_POST['password']) ? $_POST['password'] : '' ;
if($floor==1){
    $sql="select * from main where floor='1'";
}if($floor==2){
    $sql="select * from main where floor='2'";
}if($floor==3){
    $sql="select * from main where floor='3'";
}if($floor==4){
    $sql="select * from main where floor='4'";
}if($floor==5){
    $sql="select * from main where floor='5'";
}
// echo $name;

// $sql="select * from main";
 // var_dump($sql); 

$data=$conn->query($sql);

$res=$data->fetch_all(MYSQLI_ASSOC);

echo json_encode($res,JSON_UNESCAPED_UNICODE);
// var_dump($res); 

// if(($data->num_rows)>0){
//     echo 0;//存在
// }else{
//     echo 1;//不存在
// }

// $data->close();
    $conn->close();

?>