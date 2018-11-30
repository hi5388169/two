<?php

/**
 * @Author: Marte
 * @Date:   2018-11-27 16:40:24
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 22:07:38
 */

include 'connect.php';

$num=isset($_GET['num']) ? $_GET['num'] : '';
$qty=isset($_GET['qty']) ? $_GET['qty'] : '';
$page=isset($_GET['page']) ? $_GET['page'] : '';

$index=($page-1)*$qty;

if($num==1){
   $sql="select * from product order by price limit $index,$qty";
   // echo $sql;    
}else{
    $sql="select * from product order by price DESC  limit $index,$qty";
}

$data=$conn->query($sql);

$res=$data->fetch_all(MYSQLI_ASSOC);

// $sql2='select * from product';

 // $res2=$conn->query($sql2);

 // $re=$res2->fetch_all(MYSQLI_ASSOC);   
$row=$data->num_rows;//

// $row=$data->num_rows;
$goodlist=array(
        'total'=>$row,//总条数
        'datalist'=>$res//查询到的数据
    );
 
echo json_encode($goodlist,true);


$conn->close();