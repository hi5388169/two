"use strict";document.addEventListener("DOMContentLoaded",function(){var n=document.getElementById("allXL"),e=document.getElementById("spot"),i=(e.getElementsByTagName("li"),n.getElementsByClassName("chice"),document.getElementById("ding")),t=document.getElementById("dingdan"),a=document.getElementById("ErWeiMa"),o=document.getElementById("QRcode");n.onmouseenter=function(){e.style.display="block"},n.onmouseleave=function(){e.style.display="none"},i.onmouseenter=function(){t.style.display="block"},i.onmouseleave=function(){t.style.display="none"},a.onmouseenter=function(){o.style.display="block"},a.onmouseleave=function(){o.style.display="none"};var l=document.getElementById("brand1"),c=document.getElementById("variety1"),s=document.getElementById("brand2"),r=document.getElementById("variety2"),m=document.getElementById("brand3"),d=document.getElementById("variety3"),u=document.getElementById("brand4"),h=document.getElementById("variety4"),f=document.getElementById("brand5"),g=document.getElementById("variety5"),p="../api/main.php",v="floor=1";ajax("GET",p,v,function(n){for(var e=JSON.parse(n),i=0;i<e.length;i++){var t=e.map(function(n){return'<li class="particulars">\n                            <a class="a1" href="#">\n                                <span>耐克</span>\n                                <img src="'+n.brand+'" alt="" />\n                            </a>\n                        </li>\n                        '}).join("");l.innerHTML=t}for(i=0;i<e.length;i++){t=e.map(function(n){return'<li class="particulars"><a href="#">\n                    <img src="'+n.img+'" alt="" />\n                </a></li>\n                        '}).join("");c.innerHTML=t}});p="../api/main.php",v="floor=2";ajax("GET",p,v,function(n){for(var e=JSON.parse(n),i=0;i<e.length;i++){var t=e.map(function(n){return'<li>\n                            <a class="a1" href="#">\n                                <span>耐克</span>\n                                <img src="'+n.brand+'" alt="" />\n                            </a>\n                        </li>\n                        '}).join("");s.innerHTML=t}for(i=0;i<e.length;i++){t=e.map(function(n){return'<li><a href="#">\n                    <img src="'+n.img+'" alt="" />\n                </a></li>\n                        '}).join("");r.innerHTML=t}});p="../api/main.php",v="floor=3";ajax("GET",p,v,function(n){for(var e=JSON.parse(n),i=0;i<e.length;i++){var t=e.map(function(n){return'<li>\n                            <a class="a1" href="#">\n                                <span>耐克</span>\n                                <img src="'+n.brand+'" alt="" />\n                            </a>\n                        </li>\n                        '}).join("");m.innerHTML=t}for(i=0;i<e.length;i++){t=e.map(function(n){return'<li><a href="#">\n                    <img src="'+n.img+'" alt="" />\n                </a></li>\n                        '}).join("");d.innerHTML=t}});p="../api/main.php",v="floor=4";ajax("GET",p,v,function(n){for(var e=JSON.parse(n),i=0;i<e.length;i++){var t=e.map(function(n){return'<li>\n                            <a class="a1" href="#">\n                                <span>耐克</span>\n                                <img src="'+n.brand+'" alt="" />\n                            </a>\n                        </li>\n                        '}).join("");u.innerHTML=t}for(i=0;i<e.length;i++){t=e.map(function(n){return'<li><a href="#">\n                    <img src="'+n.img+'" alt="" />\n                </a></li>\n                        '}).join("");h.innerHTML=t}});p="../api/main.php",v="floor=5";ajax("GET",p,v,function(n){for(var e=JSON.parse(n),i=0;i<e.length;i++){var t=e.map(function(n){return'<li>\n                            <a class="a1" href="#">\n                                <span>耐克</span>\n                                <img src="'+n.brand+'" alt="" />\n                            </a>\n                        </li>\n                        '}).join("");f.innerHTML=t}for(i=0;i<e.length;i++){t=e.map(function(n){return'<li><a href="#">\n                    <img src="'+n.img+'" alt="" />\n                </a></li>\n                        '}).join("");g.innerHTML=t}});var $=document.getElementById("free");Cookie.get("username")&&($.onclick=function(){Cookie.remove("username"),location.href="main.html"})}),$(function(){$("#spot li").on("mouseover",function(){$("#chice .chice").css("display","none"),$("#chice .chice").eq($(this).index()).css("display","block")}),$("#spot li").on("mouseout",function(){$("#chice .chice").eq($(this).index()).css("display","block")}),$("#chice .chice").on("mouseover",function(){$("#chice .chice").eq($(this).index()).css("display","block")}),$("#chice .chice").on("mouseout",function(){$("#chice .chice").css("display","none")}),$(".dh_c .dh_cT1").on("mouseover",function(){$(".dh_c .dh_cT1 .dh_cNZ").css("display","block")}),$(".dh_c .dh_cT1").on("mouseleave",function(){$(".dh_c .dh_cT1 .dh_cNZ").css("display","none")}),$(".dh_c .dh_cT2").on("mouseover",function(){$(".dh_c .dh_cT2 .dh_cNV").css("display","block")}),$(".dh_c .dh_cT2").on("mouseleave",function(){$(".dh_c .dh_cT2 .dh_cNV").css("display","none")}),$(".dh_c .dh_cT3").on("mouseover",function(){$(".dh_c .dh_cT3 .dh_cTZ").css("display","block")}),$(".dh_c .dh_cT3").on("mouseleave",function(){$(".dh_c .dh_cT3 .dh_cTZ").css("display","none")}),$("#login").on("click",function(){location.href="enter.html"}),$("#free").on("click",function(){location.href="reg.html"}),$("#brand1").on("click",".particulars",function(){location.href="list.html"}),$("#variety1").on("click",".particulars",function(){location.href="list.html"}),states();var e=1920;$("#imglist li").css("left",e),$("#imglist li").eq(0).css("left",0);var n=null;clearInterval(n);var i=0;function t(){$("#imglist li").eq(i).animate({left:-e},1e3),i=++i>=$("#imglist li").size()?0:i,$("#imglist li").eq(i).css("left",e),$("#imglist li").eq(i).animate({left:0},1e3),a()}function a(){$("#light span").removeClass("active"),$("#light span").eq(i).addClass("active")}if(n=setInterval(t,2e3),$("#lbt").hover(function(){clearInterval(n)},function(){clearInterval(n),n=setInterval(t,2e3)}),$("#light span").click(function(){var n=$(this).index();i<n&&($("#imglist li").eq(i).animate({left:-e},1e3),$("#imglist li").eq(n).css("left",e),$("#imglist li").eq(n).animate({left:0},1e3),i=n),n<i&&($("#imglist li").eq(i).animate({left:e},1e3),$("#imglist li").eq(n).css("left",-e),$("#imglist li").eq(n).animate({left:0},1e3),i=n),a()}),$("#nav1").on("mouseenter",function(){console.log(123),$("#nav1-1").addClass("show"),$("#nav2-1").removeClass("show")}),$("#nav1").on("mouseleave",function(){console.log(123),$("#nav1-1").removeClass("show"),$("#nav2-1").addClass("show")}),$("#nav3").on("mouseenter",function(){console.log(123),$("#nav3-1").addClass("show"),$("#nav4-1").removeClass("show")}),$("#nav3").on("mouseleave",function(){console.log(123),$("#nav3-1").removeClass("show"),$("#nav4-1").addClass("show")}),Cookie.get("username")){var o=Cookie.get("username");$.ajax({type:"post",url:"../api/mycart.php",async:!0,data:{username:o},success:function(n){var e=JSON.parse(n);console.log(e),$(".quantity").html(e.length)}}),$(".mycart").on("click",function(){location.href="cart.html"})}else $(".mycart").on("click",function(){alert("您还没有登录噢!")})});