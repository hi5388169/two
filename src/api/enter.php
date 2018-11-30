<?php
/**
 * @Author: Marte
 * @Date:   2018-11-13 22:04:11
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-26 00:09:15
 */
include 'connect.php';

$name=isset($_POST['name']) ? $_POST['name'] : '';
$psw=isset($_POST['password']) ? $_POST['password'] : '';
$sql="select * from user where username='$name' and password='$psw'";
$re=$conn->query($sql);
$r=$re->fetch_all(MYSQLI_ASSOC);
// var_dump($r);
if(($re->num_rows)>0){
    echo 1;
}else{
    echo 0;
}
$re->close();
$conn->close(); 

// echo $str;
// if($data->name==$name){
//     echo "0";
// }else{
//     echo "1";
// }

?>