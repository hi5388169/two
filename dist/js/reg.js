"use strict";$(function(){$(".backFrist").on("click",function(){location.href="main.html"}),$(".goEnter").on("click",function(){location.href="enter.html"});var o=document.getElementById("reminder"),t=document.getElementById("username"),l=!1;t.onblur=function(){var e=t.value,n=checkReg.trim(e);if(n&&checkReg.tel(n)||n&&checkReg.email(n)){ajax("GET","../api/reg1.php","name="+n,function(e){console.log(e),l="0"==e?(o.innerHTML="该用户名已存在",!(o.style.color="red")):(o.innerHTML="可以使用",o.style.color="green",!0)})}else o.innerHTML="请输入正确的邮箱或手机号码!",o.style.color="red"};var r=document.getElementById("password"),c=!1;r.onblur=function(){var e=r.value,n=checkReg.trim(e);c=n&&4<=n.length?!(o.innerHTML=""):(o.innerHTML="您输入的密码不能小于4个字符",!(o.style.color="red"))};var a=document.getElementById("conPsw"),u=!1;a.onblur=function(){var e=r.value,n=a.value;u=e==n?(o.innerHTML="密码一致!",o.style.color="green",!0):(o.innerHTML="您两次输入的密码不一致!",!(o.style.color="red"))};var e=document.getElementById("code"),m=document.getElementById("digit");function n(){var e="";for(i=0;i<4;i++)e+="0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"[parseInt(62*Math.random())];m.innerHTML=e}n(),e.onclick=function(){n()};var s=document.getElementById("auth"),g=!1;s.onblur=function(){var e=m.innerHTML,n=s.value;console.log(e),console.log(n),g=e===n||(o.innerHTML="您输入的验证码不正确!",!(o.style.color="red"))},document.getElementById("btn").onclick=function(){if(console.log(l),console.log(c),console.log(u),console.log(g),l&&c&&u&&g){var e="name="+t.value+"&password="+r.value;ajax("POST","../api/reg2.php",e,function(e){console.log(e)});var n=new Date;n.setDate(n.getDate()+1),Cookie.set("username",t.value,{expires:n}),setTimeout(function(){location.href="main.html"},2e3),o.innerHTML="注册成功,请稍等...",o.style.color="green"}else o.innerHTML="有信息不对!"},document.cookie&&(console.log(document.cookie),Cookie.remove(t))});