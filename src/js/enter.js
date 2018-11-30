document.addEventListener('DOMContentLoaded', function() {
    var username = document.getElementById('username');
    var password = document.getElementById('password');
    var login = document.getElementById('login');
    var code = document.getElementById('code');
    var digit = document.getElementById('digit');
    var auth = document.getElementById('auth');
    var info = document.getElementById('info');
    function security() {
        var html = '';
        var str = '0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'
        for (i = 0; i < 4; i++) {
            html += str[parseInt(Math.random() * 62)];
        }
        console.log(html);
        digit.innerHTML = html;
    };

    security();

    code.onclick = function() {
        security();
    };

    login.onclick = function() {
        var name = username.value.trim();
        var psw = password.value.trim();
        var aut= auth.value.trim();
        if (name && psw && (aut==digit.innerHTML)) {
            var url = "../api/enter.php";
            var data = `name=${username.value}&password=${password.value}`;
            ajax('POST', url, data, function(str) {
                console.log(str);
                if(str==1){
                     var now = new Date();
            now.setDate(now.getDate() + 1);
            Cookie.set('username', username.value, { expires: now });
            setTimeout(function() {

                location.href = 'main.html';
            }, 2000);
            info.innerHTML = '登录成功,请稍等...';
                }else{
                    info.innerHTML='您输入的信息有误,请重新输入';
                }
            });

        }else{
            info.innerHTML='您输入的信息有误,请重新输入';
            info.style.color="red";
        }

    };




});