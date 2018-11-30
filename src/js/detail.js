/* 
 * @Author: Marte
 * @Date:   2018-11-22 19:30:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-30 17:41:11
 */

// //选项卡
document.addEventListener('DOMContentLoaded', function() {
    var allXL = document.getElementById('allXL');
    var spot = document.getElementById('spot');
    var spots = spot.getElementsByTagName('li');
    var chice = allXL.getElementsByClassName('chice');
    var ding = document.getElementById('ding');
    var dingdan = document.getElementById('dingdan');
    var ErWeiMa = document.getElementById('ErWeiMa');
    var QRcode = document.getElementById('QRcode');
    allXL.onmouseenter = function() {
        spot.style.display = 'block';
    }
    allXL.onmouseleave = function() {
        spot.style.display = 'none';
    }
    ding.onmouseenter = function() {
        dingdan.style.display = 'block';
    }
    ding.onmouseleave = function() {
        dingdan.style.display = 'none';
    }
    ErWeiMa.onmouseenter = function() {
        QRcode.style.display = 'block';
    }
    ErWeiMa.onmouseleave = function() {
        QRcode.style.display = 'none';
    }








});
$(function() {

    //顶部下拉菜单选项卡
    $('#spot li').on('mouseover', function() {
        $('#chice .chice').css('display', 'none');
        $('#chice .chice').eq($(this).index()).css('display', 'block');
    });
    $('#spot li').on('mouseout', function() {
        $('#chice .chice').eq($(this).index()).css('display', 'block');


    });
    $('#chice .chice').on('mouseover', function() {
        $('#chice .chice').eq($(this).index()).css('display', 'block');
    });
    $('#chice .chice').on('mouseout', function() {
        $('#chice .chice').css('display', 'none');
    });


    $('.dh_c .dh_cT1').on('mouseover', function() {
        $('.dh_c .dh_cT1 .dh_cNZ').css('display', 'block');
    });
    $('.dh_c .dh_cT1').on('mouseleave', function() {
        $('.dh_c .dh_cT1 .dh_cNZ').css('display', 'none');
    });
    $('.dh_c .dh_cT2').on('mouseover', function() {
        $('.dh_c .dh_cT2 .dh_cNV').css('display', 'block');
    });
    $('.dh_c .dh_cT2').on('mouseleave', function() {
        $('.dh_c .dh_cT2 .dh_cNV').css('display', 'none');
    });
    $('.dh_c .dh_cT3').on('mouseover', function() {
        $('.dh_c .dh_cT3 .dh_cTZ').css('display', 'block');
    });
    $('.dh_c .dh_cT3').on('mouseleave', function() {
        $('.dh_c .dh_cT3 .dh_cTZ').css('display', 'none');
    });



    //详情页渲染
    var url1 = location.search.slice(1);
    var str = url1.split('=')[1];
    // console.log(str);
    $.ajax({
        type: 'get',
        url: '../api/detail.php',
        async: true,
        data: {
            'id': str
        },
        success: function(data) {
            var arr = JSON.parse(data);
            console.log(arr);
            // console.log(arr[0]['id']);
            var html = `<div class="detail-L" data-id="${arr[0]['id']}">
                <div id="myDiv">
                    <div class="smallPic">
                        <span class="float_lay"></span>
                        <img style="width:430px;height:430px" class="bigImges" src="${arr[0]['img1']}" alt="" />
                    </div>
                    <div class="bigPic">
                        <img style="width:860px;height:860px" src="${arr[0]['img1']}" alt="" />
                    </div>
                </div>
                        <p>
                            <span><img  class="minImges" src="${arr[0]['img1']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img2']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img3']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img4']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img5']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img1']}" alt="" /></span>
                            <span><img class="minImges" src="${arr[0]['img2']}" alt="" /></span>
                        </p>
                    </div>
                    <div class="detail-R">
                        <div class="caption">
                            <h1 class="goodsname fl">DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-BKW  </h1>
                            <span class="fr" style="display:block;font-size:12px">更多&nbsp;<i style="color:#FF6821" >斯凯奇</i></span>
                        </div>
                        <ul class=" bid-price">
                            <li>吊 牌 价 : <del>¥349.00</del></li>
                            <li>销 售 价 : <del>¥279.00</del></li>
                            <li>促 销 价 :
                                <span style="font-size:14px;color:#DD0000;font-weight:900">&nbsp;${arr[0]['price']}</span>
                                <span style="display:inline-block;width:45;height:20px;color:#fff;background-color:#FF9090;text-align: center;line-height: 20px">会员价&nbsp;&nbsp;</span>
                                <span>(&nbsp;5.0折&nbsp;)&nbsp;&nbsp;立省： ￥196.00 </span>
                            </li>
                            <li>好&nbsp;&nbsp;评&nbsp;&nbsp;度：&nbsp;&nbsp;<span class="comCountBar"><i style="width:86%"></i></span>&nbsp;&nbsp;4.3分 &nbsp;&nbsp;<a href="#">已有10人评论</a></li>
                            <li>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费：&nbsp;&nbsp;名鞋库会员满399包邮&nbsp;&nbsp;(&nbsp;不包括货到付款&nbsp;) </li>
                        </ul>
                        <div class="promotion">
                            <p style="color:#FE79A9">
                                <span style="background-color:#FF9090;color:#fff">促销信息</span>&nbsp;&nbsp;<span>满299减20,满599减40&nbsp;&nbsp;限购3件</span>
                            </p>
                        </div>
                        <div class="option">
                            <ul>
                                <li style="text-indent: 4em;">${arr[0]['footage']}</li>
                                <li style="text-indent: 4em;">颜色 : <span><img style="width:16px;height:16px" src="${arr[0]['img2']}" alt="" /></span> <span><img src="" </span></li>
                                <li>购买数量 :
                                    <span class="sub"></span>
                                    <input class="num" type="" name="" id="" value="1" />
                                    <span class="add"></span></li>
                            </ul>
                        </div>
                        <div class="buy">
                            <p class="fl">您将购买 <span class="purchase" style="color:red;">1</span>  件 </p>
                            <p class="fr">
                                <span class="buyNow">立即购买</span><span class="addCart">加入购物车</span>
                            </p>
                        </div>
                        <div>
                            <p style="text-indent: 1em;font-size:12px">名鞋库客服 : 销售</p>
                        </div>
                    </div>`;
            $('#deta').html(html);
        }

    });




    //点击加减可以进行数量加减
    $('#deta').on('click', '.sub', function() {
        var pcs = $('.num').val();
        console.log(pcs);
        pcs--;
        if (pcs <= 1) {
            pcs = 1;
        };
        $('.num').val(pcs);
        $('.purchase').html(pcs);
    });
    $('#deta').on('click', '.add', function() {
        var pcs = $('.num').val();
        console.log(pcs);
        pcs++;
        if (pcs >= 10) {
            pcs = 10;
        };
        $('.num').val(pcs);
        $('.purchase').html(pcs);
    });

    //点击加入购物车,查询商品列表,判断订单表有无该商品,有则更新数据,无则插入到数据库
    $('#deta').on('click', '.addCart', function() {
        if (Cookie.get('username')){
            $('.shade').css('display', 'block');
        $('.box').css('display', 'block');
        var time = new Date();
        time.setDate(time.getDate() + 1);
        Cookie.set('id' + str, str, { 'expires': time });
        console.log(str);
        var username = Cookie.get('username');
        console.log(username);
        var id = $('.detail-L').attr('data-id');
        console.log(id);
        var num = $('.purchase').html();
        // console.log(num);
        $.ajax({
            type: 'get',
            url: '../api/detail2.php',
            async: true,
            data: {
                'id': id,
                'username': username,
                'num': num
            }
        });
    }else{
        alert('您还没有登录!');
    }
        
    });
    //点击立即购买,查询商品列表,判断订单表有无该商品,有则更新数据,无则插入到数据库
    $('#deta').on('click', '.buyNow', function() {
        if (Cookie.get('username')){
            $('.shade').css('display', 'block');
        $('.box').css('display', 'block');
        var time = new Date();
        time.setDate(time.getDate() + 1);
        Cookie.set('id' + str, str, { 'expires': time });
        var username = Cookie.get('username');
        console.log(username);
        var id = $('.detail-L').attr('data-id');
        // console.log(id);
        var num = $('.purchase').html();
        // console.log(num);
        $.ajax({
            type: 'get',
            url: '../api/detail2.php',
            async: true,
            data: {
                'id': id,
                'username': username,
                'num': num
            }
        });
         location.href = "cart.html";
        }else{
        alert('您还没有登录!');
    }
       
        
    });




    //点击关闭、继续购买、立即结算、立即购买按钮跳转
    //继续购买
    $('.continue').on('click', function() {
        location.href = "detail.html?id=" + str;
    });
    //点击关闭
    $('.close').on('click', function() {
        console.log(123);
        location.href = "detail.html?id=" + str;
    });
    //立即结算
    $('.settle').on('click', function() {
        console.log(123);
        location.href = "cart.html?";
    });
    //立即购买


    state();

    free.onclick = function() {
        if (Cookie.get('username') && Cookie.get('id')) {
            console.log(123);
            location.href = 'enter.html';
            Cookie.remove('username');
            Cookie.remove('id');
        } else {
            location.href = 'enter.html';
        }

    }



    //详情页图片放大镜

    $('#deta').on('mousemove', '.minImges', function() {
        var address = $(this).attr('src');
        // console.log(address);
        $('.bigImges').attr('src', address);
    });
    //放大镜效果
    $('#deta').on('mousemove', '#myDiv .smallPic', function(ev) {
        // console.log(123);
        var address = $('#myDiv .smallPic img').attr('src');
        // console.log(address);
        $('.bigPic img').attr('src', address);
        $('#myDiv .float_lay').css({ display: 'block' });
        $('#myDiv .bigPic').css({ display: 'block' });
        var divPosi = $('#myDiv').offset();
        // console.log(divPosi);
        //取得图片距离页面的边距
        var xx = ev.clientX;
        var yy = ev.clientY;
        var picLeft = xx - divPosi.left - 25;
        var picTop = yy - divPosi.top - 25;
        var seePic = $('#myDiv .bigPic').width();
        // console.log(seePic);
        var bigPic = $('#myDiv .bigPic img').width();
        // console.log(seePic);
        var percentL;
        var percentT;
        if (picLeft < 0) {
            picLeft = 0;
        } else if (picLeft > 378) {
            picLeft = 378;
        }
        if (picTop < 0) {
            picTop = 0;
        } else if (picTop > 378) {
            picTop = 378;
        }
        $('#myDiv .float_lay').css({ top: picTop + 'px', left: picLeft + 'px' });
        percentL = -picLeft / 378 * (bigPic - seePic);
        percentT = -picTop / 378 * (bigPic - seePic);
        $('#myDiv .bigPic img').css({ marginTop: percentT + 'px', marginLeft: percentL + 'px' });
    });
    $('#deta').on('mouseout', '#myDiv .smallPic', function(ev) {
        $('#myDiv .float_lay').css({ display: 'none' });
        $('#myDiv .bigPic').css({ display: 'none' });
    });


   //登录之后更新详情页的数据
    if (Cookie.get('username')) {
        var username = Cookie.get('username');
        $.ajax({
            type: 'post',
            url: '../api/mycart.php',
            async: true,
            data: {
                'username': username
            },
            success: function(data) {
                var arr = JSON.parse(data);
                console.log(arr);
                $('.quantity').html(arr.length);
            }
        });
        //点击详情页购物车按钮,跳转到相应用户的购物车页面
        $('.mycart').on('click', function() {
            location.href = "cart.html";
        });

    } else {
        $('.mycart').on('click', function() {

            alert('您还没有登录噢!');
        });
    }



});