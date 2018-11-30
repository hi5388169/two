/* 
 * @Author: Marte
 * @Date:   2018-11-22 19:30:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-30 12:03:06
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


    //页面渲染
    var brand1 = document.getElementById('brand1');
    var variety1 = document.getElementById('variety1');
    var brand2 = document.getElementById('brand2');
    var variety2 = document.getElementById('variety2');
    var brand3 = document.getElementById('brand3');
    var variety3 = document.getElementById('variety3');
    var brand4 = document.getElementById('brand4');
    var variety4 = document.getElementById('variety4');
    var brand5 = document.getElementById('brand5');
    var variety5 = document.getElementById('variety5');
    var url = "../api/main.php";
    var data = 'floor=1';
    ajax('GET', url, data, function(str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li class="particulars">
                            <a class="a1" href="#">
                                <span>耐克</span>
                                <img src="${item.brand}" alt="" />
                            </a>
                        </li>
                        `;
                return html;
            }).join('');

            brand1.innerHTML = res;
        }

        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li class="particulars"><a href="#">
                    <img src="${item.img}" alt="" />
                </a></li>
                        `;
                return html;
            }).join('');

            variety1.innerHTML = res;
        }

    });

    var url = "../api/main.php";
    var data = 'floor=2';
    ajax('GET', url, data, function(str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li>
                            <a class="a1" href="#">
                                <span>耐克</span>
                                <img src="${item.brand}" alt="" />
                            </a>
                        </li>
                        `;
                return html;
            }).join('');

            brand2.innerHTML = res;
        }

        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li><a href="#">
                    <img src="${item.img}" alt="" />
                </a></li>
                        `;
                return html;
            }).join('');

            variety2.innerHTML = res;
        }

    });

    var url = "../api/main.php";
    var data = 'floor=3';
    ajax('GET', url, data, function(str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li>
                            <a class="a1" href="#">
                                <span>耐克</span>
                                <img src="${item.brand}" alt="" />
                            </a>
                        </li>
                        `;
                return html;
            }).join('');

            brand3.innerHTML = res;
        }

        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li><a href="#">
                    <img src="${item.img}" alt="" />
                </a></li>
                        `;
                return html;
            }).join('');

            variety3.innerHTML = res;
        }

    });

    var url = "../api/main.php";
    var data = 'floor=4';
    ajax('GET', url, data, function(str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li>
                            <a class="a1" href="#">
                                <span>耐克</span>
                                <img src="${item.brand}" alt="" />
                            </a>
                        </li>
                        `;
                return html;
            }).join('');

            brand4.innerHTML = res;
        }

        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li><a href="#">
                    <img src="${item.img}" alt="" />
                </a></li>
                        `;
                return html;
            }).join('');

            variety4.innerHTML = res;
        }

    });

    var url = "../api/main.php";
    var data = 'floor=5';
    ajax('GET', url, data, function(str) {
        // console.log(str);
        var arr = JSON.parse(str);
        // console.log(arr);
        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li>
                            <a class="a1" href="#">
                                <span>耐克</span>
                                <img src="${item.brand}" alt="" />
                            </a>
                        </li>
                        `;
                return html;
            }).join('');

            brand5.innerHTML = res;
        }

        for (var i = 0; i < arr.length; i++) {
            var res = arr.map(function(item) {
                var html = `<li><a href="#">
                    <img src="${item.img}" alt="" />
                </a></li>
                        `;
                return html;
            }).join('');

            variety5.innerHTML = res;
        }

    });
    // console.log(Cookie.get('username'));
    var free = document.getElementById('free');
    if (Cookie.get('username')) {
        free.onclick = function() {
            Cookie.remove('username');
            location.href = 'main.html';
            // free.innerHTML='免费注册';
        }


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


    // $('.dh_c .dh_cT').on('mouseover', function() {
    //     $('.dh_c .dh_cXL').css('display', 'none');
    //     $('.dh_c .dh_cXL').eq($(this).index() - 1).css('display', 'block');
    // });

    // $('.dh_c .dh_cT').on('mouseout', function() {
    //     $('.dh_c .dh_cXL').css('display', 'none');
    // });


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

    //点击跳转

    $('#login').on('click', function() {
        location.href = "enter.html";
    });
    $('#free').on('click', function() {
        location.href = "reg.html";
    });
    $('#brand1').on('click', '.particulars', function() {
        location.href = "list.html";
    });
    $('#variety1').on('click', '.particulars', function() {
        location.href = "list.html";

    });

    //判断页面状态
    states();








    // 轮播图
    var iW =1920; //JS offsetwidth

    $('#imglist li').css('left', iW);
    $('#imglist li').eq(0).css('left', 0);
    //2.开定时器：每次轮播一个图
    var timer = null;
    clearInterval(timer);
    var now = 0;

    timer = setInterval(next, 2000); //每隔2秒钟切换一个图

    function next() {
        //旧的挪走
        $('#imglist li').eq(now).animate({ 'left': -iW }, 1000);
        now = ++now >= $('#imglist li').size() ? 0 : now;
        //新的快速放在右侧，再挪进可视区
        $('#imglist li').eq(now).css('left', iW);
        $('#imglist li').eq(now).animate({ 'left': 0 }, 1000);
        light();
    }

    //3.焦点跟随
    function light() {
        $('#light span').removeClass('active');
        $('#light span').eq(now).addClass('active');
    }

    function prev() {
        //从左侧切入到可视区
        //旧的挪到右侧
        $('#imglist li').eq(now).animate({ 'left': iW }, 1000);
        //新的
        now = --now < 0 ? $('#imglist li').size() - 1 : now;
        $('#imglist li').eq(now).css('left', -iW);
        $('#imglist li').eq(now).animate({ 'left': 0 }, 1000);
        light();
    }

    //4.点击上下按钮可以切图:如果是渲染出来的数据，记得用事件委托来绑定

    // 鼠标经过停止，鼠标离开继续运动
    $('#lbt').hover(function() {
        clearInterval(timer);
    }, function() {
        clearInterval(timer);
        timer = setInterval(next, 2000);
    });

    //5.点击焦点可以跳转

    $('#light span').click(function() {
        //旧 ：now
        //新：index() 新的
        var index = $(this).index();
        if (index > now) {
            //从右边切入
            //旧 now：挪到左边
            $('#imglist li').eq(now).animate({ 'left': -iW }, 1000);
            //新的
            $('#imglist li').eq(index).css('left', iW);
            $('#imglist li').eq(index).animate({ 'left': 0 }, 1000);
            now = index; //最新的一张变成index

        }
        if (index < now) {
            //从左边切入
            //旧 now：挪到左边
            $('#imglist li').eq(now).animate({ 'left': iW }, 1000);
            //新的
            $('#imglist li').eq(index).css('left', -iW);
            $('#imglist li').eq(index).animate({ 'left': 0 }, 1000);
            now = index; //最新的一张变成index
        }

        light();
    });


    //鞋类服装类选项卡
    $('#nav1').on('mouseenter', function() {
        console.log(123);
        // $('.boyList .boyListRight').removeClass('show');
        $('#nav1-1').addClass('show');
        $('#nav2-1').removeClass('show');
    });
    $('#nav1').on('mouseleave', function() {
        console.log(123);
        // $('.boyList .boyListRight').removeClass('show');
        $('#nav1-1').removeClass('show');
        $('#nav2-1').addClass('show');

    });

    $('#nav3').on('mouseenter', function() {
        console.log(123);
        // $('.boyList .boyListRight').removeClass('show');
        $('#nav3-1').addClass('show');
        $('#nav4-1').removeClass('show');
    });
    $('#nav3').on('mouseleave', function() {
        console.log(123);
        // $('.boyList .boyListRight').removeClass('show');
        $('#nav3-1').removeClass('show');
        $('#nav4-1').addClass('show');

    });


    //登录之后更新首页购物车的数据
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
        //点击首页的购物车按钮,跳转到相应用户的购物车页面
        $('.mycart').on('click', function() {

            location.href = "cart.html";
        });

    } else {
        $('.mycart').on('click', function() {

            alert('您还没有登录噢!');
        });
    }









});