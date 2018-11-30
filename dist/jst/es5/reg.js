'use strict';

/* 
 * @Author: Marte
 * @Date:   2018-11-25 19:34:11
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-11-30 16:06:34
 */
//跳转首页及登录页面按钮
$(function () {
    $('.backFrist').on('click', function () {
        location.href = "main.html";
    });
    $('.goEnter').on('click', function () {
        location.href = "enter.html";
    });

    //注册验证
    var reminder = document.getElementById('reminder');
    var username = document.getElementById('username');
    var ok1 = false;
    username.onblur = function () {
        //失去焦点的时候验证
        var val = username.value;
        var str1 = checkReg.trim(val); //去掉前后空格
        if (str1 && checkReg.tel(str1) || str1 && checkReg.email(str1)) {
            //不为空，并且符合正则
            var url = "../api/reg1.php";
            var data = 'name=' + str1;
            ajax('GET', url, data, function (str) {
                console.log(str);
                if (str == '0') {
                    //已存在
                    reminder.innerHTML = '该用户名已存在';
                    reminder.style.color = 'red';
                    ok1 = false;
                } else {
                    //不存在
                    reminder.innerHTML = '可以使用';
                    reminder.style.color = 'green';
                    ok1 = true;
                }
            });
        } else {
            reminder.innerHTML = '请输入正确的邮箱或手机号码!';
            reminder.style.color = 'red';
        }
    };

    var password = document.getElementById('password');
    var ok2 = false;
    password.onblur = function () {
        //失去焦点的时候验证
        var val = password.value;
        var str = checkReg.trim(val); //去掉前后空格
        if (str && str.length >= 4) {
            //不为空，并且符合正则
            reminder.innerHTML = '';
            ok2 = true; //正确的情况才打开开关
        } else {
            reminder.innerHTML = '您输入的密码不能小于4个字符';
            reminder.style.color = 'red';
            ok2 = false;
        }
    };

    var conPsw = document.getElementById('conPsw');
    var ok3 = false;
    conPsw.onblur = function () {
        //失去焦点的时候验证
        var val1 = password.value;
        var val2 = conPsw.value;
        if (val1 == val2) {
            reminder.innerHTML = '密码一致!';
            reminder.style.color = 'green';
            ok3 = true;
        } else {
            reminder.innerHTML = '您两次输入的密码不一致!';
            reminder.style.color = 'red';
            ok3 = false;
        }
    };

    var code = document.getElementById('code');
    var digit = document.getElementById('digit');

    function security() {
        var html = '';
        var str = '0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
        for (i = 0; i < 4; i++) {
            html += str[parseInt(Math.random() * 62)];
        }

        digit.innerHTML = html;
    };
    security();

    code.onclick = function () {
        security();
    };

    var auth = document.getElementById('auth');
    var ok4 = false;
    auth.onblur = function () {
        //失去焦点的时候验证
        var val1 = digit.innerHTML;
        var val2 = auth.value;
        console.log(val1);
        console.log(val2);
        if (val1 !== val2) {
            reminder.innerHTML = '您输入的验证码不正确!';
            reminder.style.color = 'red';
            ok4 = false;
        } else {
            ok4 = true;
        }
    };

    var btn = document.getElementById('btn');
    btn.onclick = function () {
        console.log(ok1);
        console.log(ok2);

        console.log(ok3);
        console.log(ok4);

        if (ok1 && ok2 && ok3 && ok4) {
            //全部信息都匹配才能跳转
            var url = "../api/reg2.php";
            var data = 'name=' + username.value + '&password=' + password.value;
            ajax('POST', url, data, function (str) {
                console.log(str);
            });
            var now = new Date();
            now.setDate(now.getDate() + 1);
            Cookie.set('username', username.value, { expires: now });
            setTimeout(function () {

                location.href = 'main.html';
            }, 2000);
            reminder.innerHTML = '注册成功,请稍等...';
            reminder.style.color = 'green';
        } else {
            reminder.innerHTML = '有信息不对!';
        }
    };

    if (document.cookie) {
        console.log(document.cookie);
        Cookie.remove(username);
    }
});