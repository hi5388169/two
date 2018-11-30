'use strict';

/* 
 * @Author: Marte
 * @Date:   2018-11-22 19:30:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-30 14:48:15
 */

// //选项卡
document.addEventListener('DOMContentLoaded', function () {
    var allXL = document.getElementById('allXL');
    var spot = document.getElementById('spot');
    var spots = spot.getElementsByTagName('li');
    var chice = allXL.getElementsByClassName('chice');
    var ding = document.getElementById('ding');
    var dingdan = document.getElementById('dingdan');
    var ErWeiMa = document.getElementById('ErWeiMa');
    var QRcode = document.getElementById('QRcode');
    var unfold = document.getElementById('unfold');
    var list = document.getElementById('list');
    var oppen = document.getElementById('oppen');
    var pageList = document.getElementById('pageList');
    var asc = document.getElementById('asc');
    var desc = document.getElementById('desc');
    allXL.onmouseenter = function () {
        spot.style.display = 'block';
    };
    allXL.onmouseleave = function () {
        spot.style.display = 'none';
    };
    ding.onmouseenter = function () {
        dingdan.style.display = 'block';
    };
    ding.onmouseleave = function () {
        dingdan.style.display = 'none';
    };
    ErWeiMa.onmouseenter = function () {
        QRcode.style.display = 'block';
    };
    ErWeiMa.onmouseleave = function () {
        QRcode.style.display = 'none';
    };

    // 明细展开及收起
    unfold.onclick = function () {
        console.log(oppen.className);
        if (oppen.className == 'before') {
            list.style.height = 688 + 'px';
            oppen.classList.add('after');
            oppen.innerHTML = '收起';
        } else {

            oppen.classList.remove('after');
            list.style.height = 273 + 'px';
            oppen.innerHTML = '展开';
        }
    };

    //页面渲染

    var prev = document.querySelector('#prev');
    var next = document.querySelector('#next');
    var pages = document.getElementById('pages');
    var rows = 0;

    //页面渲染函数封装
    function creat(arr) {
        //数据渲染函数封装
        var res = arr.datalist.map(function (item) {
            // console.log(item);
            // console.log(item.img1);
            var html = '<dl  class="pageList" data-id="' + item.id + '">\n                    <dt>\n                        <img src="' + item.img1 + '" alt="" />\n                        <div class="minpic">\n                            <span class="fl"> < </span>\n                            <span>\n                            <img style="border:1px solid #DDDDDD" class="minimg" src="' + item.img1 + '" alt="" />\n                        </span>\n                            <span class="fr"> > </span>\n                        </div>\n                    </dt>\n                    <dd>\n                        <p style="font-size: 10px;">' + item.price + ' <del>\xA5229.00</del></p>\n                        <p style="overflow:hidden;">' + item.title1 + '</p>\n                        <p style="margin-bottom: 10px;color:#999999">\u5DF2\u552E\u51FA<span style="color:#FF6652" > 6 </span>\u4EF6</p>\n                        <p>' + item.footage + '</p>\n                    </dd>\n                </dl>\n                        ';
            return html;
        }).join('');

        pageList.innerHTML = res;
    };

    var url = "../api/list.php";
    var data1 = 'page=1&qty=50';
    ajax('GET', url, data1, function (str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr.datalist);
        // console.log(arr.datalist[0].img1)
        for (var i = 0; i < arr.datalist.length; i++) {
            creat(arr);
        }

        //总页码,创建页码数
        var sum = arr.total;
        // console.log(sum);
        var num = arr.qty;
        var page = Math.ceil(sum / num);
        rows = page;
        // console.log(page);
        var con = '';
        for (var i = 0; i < rows; i++) {
            con += '<span>' + (i + 1) + '</span>';
        }
        pages.innerHTML = con;
        pages.children[0].className = 'active';

        if (page >= 2) {
            next.style.display = 'block';
        }
    });

    var now = 1; //当前页
    //上一页,下一页显示情况函数封装
    function update(now) {
        if (now != 1) {
            //上一页显示隐藏状态
            prev.style.display = 'block';
        } else {
            prev.style.display = 'none';
        }

        if (now != rows) {
            //下一页显示隐藏状态
            next.style.display = 'block';
        } else {
            next.style.display = 'none';
        }
    }

    pages.onclick = function (ev) {
        //事件委托绑定节点
        var ev = ev || window.event;

        if (ev.target.tagName.toLowerCase() == 'span') {
            //console.log(ev.target);//类似this
            // var pagenum = ev.target.innerText;
            now = ev.target.innerText;
            Listcont();
            ajax('GET', url, data, function (str) {
                var arr = JSON.parse(str);
                console.log(arr);
                creat(arr);
                update(now);
                for (var i = 0; i < pages.children.length; i++) {
                    pages.children[i].className = '';
                }
                pages.children[now - 1].className = 'active';
            });
            //想要第几页的内容就传这个参数过去page
            // var url = "../api/list.php";
            // var data = 'qty=50&page=' + now;
            // ajax('GET', url, data, function(str) {
            //     var arr = JSON.parse(str);

            //     creat(arr);

            //     for (var i = 0; i < pages.children.length; i++) {
            //         pages.children[i].className = '';
            //     }
            //     pages.children[now - 1].className = 'active';

            //     update(now);
            //     // console.log(now);
            //     // console.log(rows);
            // });
        }
    };

    //点击上一页
    prev.onclick = function () {
        // console.log(pagenum);
        now--;
        if (now <= 1) {
            now = 1; //最小第一页
        }
        update(now);
        // console.log(now);
        // console.log(rows);
        Listcont();
        ajax('GET', url, data, function (str) {
            var arr = JSON.parse(str);
            creat(arr);
            for (var i = 0; i < pages.children.length; i++) {
                pages.children[i].className = '';
            }
            pages.children[now - 1].className = 'active';
        });
    };

    //点击下一页
    next.onclick = function () {
        now++;
        if (now >= rows) {
            now = rows; //最大就是最后一页
        }
        update(now);

        Listcont();
        ajax('GET', url, data, function (str) {
            var arr = JSON.parse(str);
            creat(arr);
            for (var i = 0; i < pages.children.length; i++) {
                pages.children[i].className = '';
            }
            pages.children[now - 1].className = 'active';
        });
    };

    //页面根据价格排序
    //第一页数据
    function Listcont() {
        var ascclass = asc.className;
        var desclass = desc.className;
        console.log(ascclass);
        console.log(desclass);
        if (ascclass === 'active') {
            console.log(123);
            url = '../api/order1.php';
            data = 'num=1&qty=50&page=' + now;
        } else if (desclass === 'active') {
            url = '../api/order1.php';
            data = 'qty=50&page=' + now;
        } else {
            url = '../api/list.php';
            data = 'qty=50&page=' + now;
        }
    }
    orderby();

    function orderby() {
        var orderby = Cookie.get('condition');
        console.log(orderby);
        if (orderby === 'asc') {
            asc.className = 'active';
            console.log(123);
            url = '../api/order1.php';
            data = 'num=1&qty=50&page=1';
        } else if (orderby === 'desc') {
            desc.className = 'active';
            url = '../api/order1.php';
            data = 'qty=50&page=1';
        } else {
            url = '../api/list.php';
            data = 'qty=50&page=1';
        }
        ajax('GET', url, data, function (str) {
            var arr = JSON.parse(str);
            console.log(arr);
            creat(arr);
        });
    }

    asc.onclick = function () {
        asc.className = 'active';
        desc.className = '';
        Cookie.set('condition', 'asc', {});
        Listcont();
        ajax('GET', url, data, function (str) {
            var arr = JSON.parse(str);
            console.log(arr);
            creat(arr);
        });
    };
    desc.onclick = function () {
        desc.className = 'active';
        asc.className = '';
        // Cookie.remove('condition');
        Cookie.set('condition', 'desc', {});
        Listcont();
        ajax('GET', url, data, function (str) {
            var arr = JSON.parse(str);
            console.log(arr);
            creat(arr);
        });
        // console.log(desclass);
    };
    //刷新页面判断是刷新前是升序还是降序
    //点击页码时候判断是升序还是降序
    //点击上一页时候判断是升序还是降序
    //点击下一页时候判断是升序还是降序
    //点击价格升序 将升序asc存入cookies 刷新页面时用到
    //点击价格升序,给价格升序按钮添加active属性 并清空降序的active属性
    //点击价格降序 将降序desc存入cookies 刷新页面时用到
    //点击价格降序 给价格降序按钮添加active属性 并清空升序的active属性


    var free = document.getElementById('free');
    free.onclick = function () {
        if (Cookie.get('username')) {
            console.log(123);
            location.href = 'main.html';
            Cookie.remove('username');
            free.innerHTML = '免费注册';
            // wlc.innerHTML='';
        } else {
            location.href = 'reg.html';
        }
    };
});

$(function () {
    //判断页面状态
    state();
    //点击退出跳转到登录页
    //     $('#free').on('click', function() {
    //     location.href = "reg.html";
    // });

    //获取商品id,跳转到详情页
    $('#pageList').on('click', 'dl', function () {
        $id = $(this).attr("data-id");
        console.log($id);
        location.href = "detail.html?id=" + $id;
        // var now = new Date();
        //     now.setDate(now.getDate() + 1);
        //     Cookie.set('username', username.value, { expires: now });
    });

    //顶部下拉菜单选项卡
    $('#spot li').on('mouseover', function () {
        $('#chice .chice').css('display', 'none');
        $('#chice .chice').eq($(this).index()).css('display', 'block');
    });
    $('#spot li').on('mouseout', function () {
        $('#chice .chice').eq($(this).index()).css('display', 'block');
    });
    $('#chice .chice').on('mouseover', function () {
        $('#chice .chice').eq($(this).index()).css('display', 'block');
    });
    $('#chice .chice').on('mouseout', function () {
        $('#chice .chice').css('display', 'none');
    });

    $('.dh_c .dh_cT1').on('mouseover', function () {
        $('.dh_c .dh_cT1 .dh_cNZ').css('display', 'block');
    });
    $('.dh_c .dh_cT1').on('mouseleave', function () {
        $('.dh_c .dh_cT1 .dh_cNZ').css('display', 'none');
    });
    $('.dh_c .dh_cT2').on('mouseover', function () {
        $('.dh_c .dh_cT2 .dh_cNV').css('display', 'block');
    });
    $('.dh_c .dh_cT2').on('mouseleave', function () {
        $('.dh_c .dh_cT2 .dh_cNV').css('display', 'none');
    });
    $('.dh_c .dh_cT3').on('mouseover', function () {
        $('.dh_c .dh_cT3 .dh_cTZ').css('display', 'block');
    });
    $('.dh_c .dh_cT3').on('mouseleave', function () {
        $('.dh_c .dh_cT3 .dh_cTZ').css('display', 'none');
    });

    //更新列表页购物车的数据 
    if (Cookie.get('username')) {
        var username = Cookie.get('username');
        $.ajax({
            type: 'post',
            url: '../api/mycart.php',
            async: true,
            data: {
                'username': username
            },
            success: function success(data) {
                var arr = JSON.parse(data);
                console.log(arr);
                $('.quantity').html(arr.length);
            }
        });
    }
    //点击列表页的购物车按钮,跳转到相应用户的购物车页面
    $('.mycart').on('click', function () {
        if (Cookie.get('username')) {
            location.href = "cart.html";
        } else {
            alert('您还没有登录噢!');
        }
    });

    $('#login').on('click', function () {
        location.href = "enter.html";
    });
});