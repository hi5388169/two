<?php
/**
 * @Author: Marte
 * @Date:   2018-11-27 10:48:01
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 21:29:25
 */


$page=isset($_GET['page']) ? $_GET['page'] : '';
$qty=isset($_GET['qty']) ? $_GET['qty'] : '';

include 'connect.php';

$index=($page-1)*$qty;//计算下标的公式
    
    //写查询语句 ：
    $sql="SELECT * FROM product LIMIT $index,$qty";
   
    //执行语句：得到结果集
    $data=$conn->query($sql);
    
    //获取内容部分
    // $data=$res->fetch_all(MYSQLI_ASSOC);//获取内容部分
    $res=$data->fetch_all(MYSQLI_ASSOC);
    //再写一个查询语句
    // var_dump($res);
    $sql2='select * from product';
    
    // //执行语句
    $res2=$conn->query($sql2);
    
    $row=$res2->num_rows;//获取结果集里面的num_rows属性，记录的条数
    
    // //把你要给前端数据，做成关联数组，再统一转成字符串
    
    $goodlist=array(
        'total'=>$row,//总条数
        'datalist'=>$res,//查询到的数据
        'page'=>$page,//第几页
        'qty'=>$qty//每页显示多少条
    );
    
    echo json_encode($goodlist,true);
    
    // $res->close();//关掉结果集
    $res2->close();//关掉结果集
    $conn->close();

