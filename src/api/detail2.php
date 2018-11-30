<?php
/**
 * @Author: Marte
 * @Date:   2018-11-28 17:39:23
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 14:35:51
 */
//查询商品信息插入购物车表,渲染购物车页面
include 'connect.php';

$id=isset($_GET['id']) ? $_GET['id'] : '1';
$num=isset($_GET['num']) ? $_GET['num'] : '1';
$username=isset($_GET['username']) ? $_GET['username'] : '18270815396';

$sql="select * from product where id=$id";

$res=$conn->query($sql);

$re=$res->fetch_all(MYSQLI_ASSOC);
// array_slice()
// $re[0]['price']
$goodsprice=substr($re[0]['price'],3);
$img=$re[0]['img1'];
$total=$num*$goodsprice;
// var_dump($img);

$goodstitle = $re[0]['title2'];
//加入购物车前先判断购物车有没有 
$sql2="select * from orderlist where goodsid='$id' and username='$username'";
//有就执行更新语句
$sql4="update orderlist set goodsnum=goodsnum+'$num',goodstotal=goodstotal+'$total' where goodsid='$id' and username='$username'";
//没有就执行插入语句
$sql3="INSERT into orderlist(
        username,
        goodstitle,
        goodstotal,
        goodsnum,
        goodsid,
        goodsprice,
        img
    ) VALUES(
        '$username',
        '$goodstitle',
        '$total',
        '$num',
        '$id',
        '$goodsprice',
        '$img'
    )";
//取得购物车数据 goodsid username为条件
$res=$conn->query($sql2);
//获取行数
$row=$res->num_rows;
//行数大于0则有数据  则更新数量  否则执行插入数据
if($row>0){
    $res2=$conn->query($sql4);
}else{
    $res2=$conn->query($sql3);
}


echo json_encode($res2,JSON_UNESCAPED_UNICODE);

$conn->close();