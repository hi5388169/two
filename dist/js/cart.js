"use strict";document.addEventListener("DOMContentLoaded",function(){var n=document.getElementById("ding"),t=document.getElementById("dingdan");n.onmouseenter=function(){t.style.display="block"},n.onmouseleave=function(){t.style.display="none"};var s=document.getElementsByClassName("quantity")[0],l=document.getElementById("cartproduct"),a=(document.getElementById("pay"),Cookie.get("username"));console.log(a);var i=0,e="username="+a;console.log(e),ajax("POST","../api/mycart.php",e,function(n){var t=JSON.parse(n);console.log(t);for(var a=0;a<t.length;a++){var e='<ul class="product" data-id="'+t.content[a].goodsid+'">\n                <li style="width: 50px;height: 65px;padding-right: 25px;">\n                    <img style="width: 50px;height: 50px;" src="'+t.content[a].img+'" alt="" /></li>\n                <li>\n                    <span>\n                        <a href="javascript:;"> '+t.content[a].goodstitle+"</a><br />\n                        <i>(尺码:36.5,颜色:白色)</i>\n                    </span>\n                </li>\n                <li>0</li>\n                <li>¥<span>"+t.content[a].goodsprice+'</span></li>\n                <li>\n                    <span>\n                        <span class="cd">\n                            <img style="width:16px;height:16px;padding-left: 0px;" src="../img/cd.png" alt="" />\n                        </span>\n                        <input class="cartnum" style="width:30px;height:20px;padding:2px;text-align:center; " type="text" name="" id="" value="'+t.content[a].goodsnum+'" />\n                        <span class="ad">\n                            <img style="width:16px;height:16px; padding-left:0px;" src="../img/ca.png" alt="" />\n                        </span>\n                    </span>\n                </li>\n                <li>\n                    <span class="discounts">0</span>\n                </li>\n                <li>¥<span class="god">'+t.content[a].goodstotal+'</span></li>\n                <li>\n                    <span><a href="javascript:;">收藏</a></span>\n                    <span class="del"><a href="javascript:;">删除</a></span>\n                </li>\n            </ul>\n\n\n            ';l.innerHTML+=e,s.innerHTML=t.length,i+=1*t.content[a].goodstotal}599<i?i-=40:299<i?i-=20:i=i,$("#pay").html("¥ "+i),console.log(i)})}),$(function(){var l=Cookie.get("username");console.log(l),l&&($(".cook").html(l),$(".cook").css("color","red")),$("#cartproduct").on("click",".cd",function(){var n=$(this).parents().parents().parents().attr("data-id");console.log(n);var t=$(this).next().val();console.log(t);var a=t-1;a<=1&&(a=1),$(this).next().val(a),console.log($(this).parent().parent().prev().children().html());var e=a*$(this).parent().parent().prev().children().html(),s=0;$(this).parent().parent().next().next().html("¥ "+e),$.ajax({type:"get",url:"../api/cart.php",async:!0,data:{id:n,username:l,num:a},success:function(n){var t=JSON.parse(n);console.log(t);for(var a=0;a<t.length;a++)s+=1*t[a].goodstotal;console.log(s),599<s?s-=40:299<s?s-=20:s=s,$("#pay").html("¥ "+s)}})}),$("#cartproduct").on("click",".ad",function(){var n=$(this).parents().parents().parents().attr("data-id");console.log(n);var t=$(this).prev().val();console.log(t);var a=1*t+1;100<=a&&(a=100),$(this).prev().val(a),console.log($(this).parent().parent().prev().children().html());var e=a*$(this).parent().parent().prev().children().html(),s=0;$(this).parent().parent().next().next().html("¥ "+e),$.ajax({type:"get",url:"../api/cart.php",async:!0,data:{id:n,username:l,num:a},success:function(n){var t=JSON.parse(n);console.log(t);for(var a=0;a<t.length;a++)s+=1*t[a].goodstotal;599<s?s-=40:299<s?s-=20:s=s,console.log(s),$("#pay").html("¥ "+s)}})}),$("#cartproduct").on("click",".del",function(){var s=0,n=$(this).parents().parents().attr("data-id");console.log(n),confirm("您确定删除该订单吗?")&&$.ajax({type:"get",url:"../api/del.php",async:!0,data:{id:n,username:l},success:function(n){var t=JSON.parse(n);console.log(t);var a=t.map(function(n){return'<ul class="product" data-id="'+n.goodsid+'">\n                <li style="width: 50px;height: 65px;padding-right: 25px;">\n                    <img style="width: 50px;height: 50px;" src="'+n.img+'" alt="" /></li>\n                <li>\n                    <span>\n                        <a href="javascript:;"> '+n.goodstitle+"</a><br />\n                        <i>(尺码:36.5,颜色:白色)</i>\n                    </span>\n                </li>\n                <li>0</li>\n                <li>¥<span>"+n.goodsprice+'</span></li>\n                <li>\n                    <span>\n                        <span class="cd">\n                            <img style="width:16px;height:16px;padding-left: 0px;" src="../img/cd.png" alt="" />\n                        </span>\n                        <input class="cartnum" style="width:30px;height:20px;padding:2px;text-align:center; " type="text" name="" id="" value="'+n.goodsnum+'" />\n                        <span class="ad">\n                            <img style="width:16px;height:16px; padding-left:0px;" src="../img/ca.png" alt="" />\n                        </span>\n                    </span>\n                </li>\n                <li>\n                    <span class="discounts">0</span>\n                </li>\n                <li>¥<span class="god">'+n.goodstotal+'</span></li>\n                <li>\n                    <span><a href="javascript:;">收藏</a></span>\n                    <span class="del"><a href="javascript:;">删除</a></span>\n                </li>\n            </ul>'}).join("");$("#cartproduct").html(a);for(var e=0;e<t.length;e++)s+=1*t[e].goodstotal;599<s?s-=40:299<s?s-=20:s=s,$("#pay").html("¥ "+s)}})}),$(".continue").on("click",function(){console.log(123),location.href="list.html"}),$(".free").on("click",function(){location.href="enter.html",Cookie.remove("username")})});