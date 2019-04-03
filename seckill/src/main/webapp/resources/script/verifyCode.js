var verifyCode = {

    getCode:function () {
        $.post('/verifyCodeServlet', {}, function (result) {
            $('#verifyImg').src(result);
        });
    }
}