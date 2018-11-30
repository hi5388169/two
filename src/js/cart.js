/* 
 * @Author: Marte
 * @Date:   2018-11-26 11:06:05
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-29 23:24:58
 */
document.addEventListener('DOMContentLoaded', function() {
    var ding = document.getElementById('ding');
    var dingdan = document.getElementById('dingdan');

    ding.onmouseenter = function() {
        dingdan.style.display = 'block';
    }
    ding.onmouseleave = function() {
        dingdan.style.display = 'none';
    }


    //查询商品信息并插入购物车表
    var quantity = document.getElementsByClassName('quantity')[0];
    var cartproduct = document.getElementById('cartproduct');
    var pay = document.getElementById('pay');
    var username = Cookie.get('username');
    console.log(username);
    var sum = 0;
    var url = '../api/mycart.php';
    var data = 'username=' + username;
    console.log(data);
    ajax('POST', url, data, function(str) {
        var arr = JSON.parse(str);
        console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var html = `<ul class="product" data-id="${arr.content[i]['goodsid']}">
                <li style="width: 50px;height: 65px;padding-right: 25px;">
                    <img style="width: 50px;height: 50px;" src="${arr.content[i]['img']}" alt="" /></li>
                <li>
                    <span>
                        <a href="javascript:;"> ${arr.content[i]['goodstitle']}</a><br />
                        <i>(尺码:36.5,颜色:白色)</i>
                    </span>
                </li>
                <li>0</li>
                <li>¥<span>${arr.content[i]['goodsprice']}</span></li>
                <li>
                    <span>
                        <span class="cd">
                            <img style="width:16px;height:16px;padding-left: 0px;" src="../img/cd.png" alt="" />
                        </span>
                        <input class="cartnum" style="width:30px;height:20px;padding:2px;text-align:center; " type="text" name="" id="" value="${arr.content[i]['goodsnum']}" />
                        <span class="ad">
                            <img style="width:16px;height:16px; padding-left:0px;" src="../img/ca.png" alt="" />
                        </span>
                    </span>
                </li>
                <li>
                    <span class="discounts">0</span>
                </li>
                <li>¥<span class="god">${arr.content[i]['goodstotal']}</span></li>
                <li>
                    <span><a href="javascript:;">收藏</a></span>
                    <span class="del"><a href="javascript:;">删除</a></span>
                </li>
            </ul>


            `;
            cartproduct.innerHTML += html;
            quantity.innerHTML = arr.length;

            sum += arr.content[i]['goodstotal'] * 1;


        }
        if (sum > 599) {
            sum = sum - 40;
        } else if (sum > 299) {
            sum = sum - 20;
        } else {
            sum = sum;
        }
        $('#pay').html('¥ ' + sum);

        console.log(sum);


    });

    //删
    // cartproduct.onclick=function(ev){
    //     var ev = ev || window.event;

    //     if (ev.target.className == 'del'){
    //         var bool=confirm('您确定删除该订单吗?')
    //         if(bool){

    //         }
    //          var url = "../api/del.php";
    //           console.log(document.cookie);
    //             // var data ='username='+username$'';
    //     }




    // }


});


$(function() {



    var username = Cookie.get('username');
    console.log(username);
    if (username) {
        $('.cook').html(username);
        $('.cook').css('color', 'red');
    }

    //点击加减进行数据库数据变化并渲染

    $('#cartproduct').on('click', '.cd', function() {
        var id = $(this).parents().parents().parents().attr('data-id');
        console.log(id);
        var cartnum = $(this).next().val();
        console.log(cartnum);
        var carnum = cartnum - 1;
        if (carnum <= 1) {
            carnum = 1;
        }
        $(this).next().val(carnum);

        console.log($(this).parent().parent().prev().children().html());

        var par = $(this).parent().parent().prev().children().html();
        var tot = carnum * par;
        var totalpay = 0;
        $(this).parent().parent().next().next().html('¥ ' + tot);
        $.ajax({
            type: 'get',
            url: '../api/cart.php',
            async: true,
            data: {
                'id': id,
                'username': username,
                'num': carnum
            },
            success: function(data) {

                var arr = JSON.parse(data);
                console.log(arr);
                for (var i = 0; i < arr.length; i++) {
                    totalpay += arr[i]['goodstotal'] * 1;
                }
                console.log(totalpay);
                if (totalpay > 599) {
                    totalpay = totalpay - 40;
                } else if (totalpay > 299) {
                    totalpay = totalpay - 20;
                } else {
                    totalpay = totalpay;
                }
                $('#pay').html('¥ ' + totalpay);
                // pay.innerHTML='¥ '+totalpay;
            }
        });
    });

    $('#cartproduct').on('click', '.ad', function() {
        var id = $(this).parents().parents().parents().attr('data-id');
        console.log(id);
        var cartnum = $(this).prev().val();
        console.log(cartnum);
        var carnum = 1 * cartnum + 1;
        if (carnum >= 100) {
            carnum = 100;
        }
        $(this).prev().val(carnum);

        console.log($(this).parent().parent().prev().children().html());

        var par = $(this).parent().parent().prev().children().html();
        var tot = carnum * par;
        var totalpay = 0;
        $(this).parent().parent().next().next().html('¥ ' + tot);

        // console.log($(this).next().val());

        $.ajax({
            type: 'get',
            url: '../api/cart.php',
            async: true,
            data: {
                'id': id,
                'username': username,
                'num': carnum
            },
            success: function(data) {

                var arr = JSON.parse(data);
                console.log(arr);
                for (var i = 0; i < arr.length; i++) {
                    totalpay += arr[i]['goodstotal'] * 1;
                }
                if (totalpay > 599) {
                    totalpay = totalpay - 40;
                } else if (totalpay > 299) {
                    totalpay = totalpay - 20;
                } else {
                    totalpay = totalpay;
                }
                console.log(totalpay);
                $('#pay').html('¥ ' + totalpay);
                // pay.innerHTML='¥ '+totalpay;
            }
        });

    });


    //删除
    $('#cartproduct').on('click', '.del', function() {
        var totalpay = 0;
        var id = $(this).parents().parents().attr('data-id');
        console.log(id);
        var bool = confirm("您确定删除该订单吗?")
        if (bool) {
            $.ajax({
                type: 'get',
                url: '../api/del.php',
                async: true,
                data: {
                    'id': id,
                    'username': username,
                },
                success: function(data) {
                    var arr = JSON.parse(data);
                    console.log(arr);
                    var res = arr.map(function(item) {
                        return `<ul class="product" data-id="${item['goodsid']}">
                <li style="width: 50px;height: 65px;padding-right: 25px;">
                    <img style="width: 50px;height: 50px;" src="${item['img']}" alt="" /></li>
                <li>
                    <span>
                        <a href="javascript:;"> ${item['goodstitle']}</a><br />
                        <i>(尺码:36.5,颜色:白色)</i>
                    </span>
                </li>
                <li>0</li>
                <li>¥<span>${item['goodsprice']}</span></li>
                <li>
                    <span>
                        <span class="cd">
                            <img style="width:16px;height:16px;padding-left: 0px;" src="../img/cd.png" alt="" />
                        </span>
                        <input class="cartnum" style="width:30px;height:20px;padding:2px;text-align:center; " type="text" name="" id="" value="${item['goodsnum']}" />
                        <span class="ad">
                            <img style="width:16px;height:16px; padding-left:0px;" src="../img/ca.png" alt="" />
                        </span>
                    </span>
                </li>
                <li>
                    <span class="discounts">0</span>
                </li>
                <li>¥<span class="god">${item['goodstotal']}</span></li>
                <li>
                    <span><a href="javascript:;">收藏</a></span>
                    <span class="del"><a href="javascript:;">删除</a></span>
                </li>
            </ul>`;
                    }).join('');

                    $('#cartproduct').html(res);
                    for (var i = 0; i < arr.length; i++) {
                        totalpay += arr[i]['goodstotal'] * 1;
                    }

                    if (totalpay > 599) {
                        totalpay = totalpay - 40;
                    } else if (totalpay > 299) {
                        totalpay = totalpay - 20;
                    } else {
                        totalpay = totalpay;
                    }
                    $('#pay').html('¥ ' + totalpay);

                }

            });
        }



    });





    $('.continue').on('click', function() {
        console.log(123);
        location.href = "list.html";

    });

    $('.free').on('click', function() {
        location.href = "enter.html";
        Cookie.remove('username');
    });

});