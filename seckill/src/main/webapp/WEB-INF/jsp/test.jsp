<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>WebTest</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<div class="container">
    <%--<h1>测试数组传数据</h1>--%>
    <%--<div class="row">--%>
    <%--<div class="col-md-3"><input id="t1" type="text" class="form-control"/></div>--%>
    <%--<div class="col-md-3"><input id="t2" type="text" class="form-control"/></div>--%>
    <%--<div class="col-md-3"><input id="t3" type="text" class="form-control"/></div>--%>
    <%--<button id="submit1" class="btn btn-default" type="button">提交1</button>--%>
    <%--<button id="submit2" class="btn btn-default" type="button">提交2</button>--%>
    <%--<button id="submit3" class="btn btn-default" type="button">提交3</button>--%>
    <%--<button id="submit4" class="btn btn-default" type="button">提交4</button>--%>
    <%--<button id="submit5" class="btn btn-default" type="button">提交5</button>--%>
    <%--</div>--%>
    <h1>测试获取表格数据</h1>
    <button id="getTableContent" class="btn btn-default" type="button">获取表格内容</button>
    <div class="row">
        <div class="col-md-12">
            <div style="padding-right: 17px;">
                <table id="testTable1" class="table table-bordered">
                    <thead class="text-center">
                    <tr>
                        <td>
                            <label>
                                <input type="checkbox" id="checkBox"/>
                            </label>
                        </td>
                        <td style="display: none">id</td>
                        <td>物料</td>
                        <td>数量</td>
                        <td>描述</td>
                        <td>单位</td>
                        <td>库房</td>
                        <td>单价</td>
                        <td>品牌</td>
                        <td>供应商</td>
                        <td>需求时间</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <label>
                                <input type="checkbox"/>
                            </label>
                        </td>
                        <td>物料1</td>
                        <td>数量1</td>
                        <td>描述1</td>
                        <td>单位1</td>
                        <td>库房1</td>
                        <td>单价1</td>
                        <td>品牌1</td>
                        <td>供应商1</td>
                        <td>需求时间1</td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <input type="checkbox"/>
                            </label>
                        </td>
                        <td>物料2</td>
                        <td>数量2</td>
                        <td>描述2</td>
                        <td>单位2</td>
                        <td>库房2</td>
                        <td>单价2</td>
                        <td>品牌2</td>
                        <td>供应商2</td>
                        <td>需求时间2</td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <input type="checkbox"/>
                            </label>
                        </td>
                        <td>物料3</td>
                        <td>数量3</td>
                        <td>描述3</td>
                        <td>单位3</td>
                        <td>库房3</td>
                        <td>单价3</td>
                        <td>品牌3</td>
                        <td>供应商3</td>
                        <td>需求时间3</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <h1>测试Long数据</h1>
    <button id="testLong" class="btn btn-default" type="button">测试Long数据</button>
    <div class="row">
        <div class="col-md-12">
            <input id="testVal">
        </div>
    </div>
</div>

</body>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<%--<script src="/resources/script/ajax.js.js" type="text/javascript"></script>--%>

<script type="text/javascript">
    $(function () {

        jQuery.ax = function (url, data, async, type, dataType, successfn, errorfn) {
            async = (async == null || async == "" || typeof(async) == "undefined") ? "true" : async;
            type = (type == null || type == "" || typeof(type) == "undefined") ? "post" : type;
            dataType = (dataType == null || dataType == "" || typeof(dataType) == "undefined") ? "json" : dataType;
            data = (data == null || data == "" || typeof(data) == "undefined") ? {"date": new Date().getTime()} : data;

        };

        /*登陆按钮click事件监听*/
        $('#submit1').click(function () {
            getMsg1();
        });
        $('#submit2').click(function () {
            getMsg2();
        });
        $('#submit3').click(function () {
            getMsg3();
        });
        $('#submit4').click(function () {
            getMsg4();
        });
        $('#submit5').click(function () {
            getMsg5();
        });

        $('#getTableContent').click(function () {
            var date = getTableContent();
            alert(JSON.stringify(date));
        });

        $('#testLong').click(function () {
            testLong();
        });

        function testLong() {
            $.ajax({
                type: "POST",
                url: "/test/testLong",
                success: function (data) {
                    $('#testLong').val(data);
                    alert($('#testLong').val()+"///"+Number.MAX_SAFE_INTEGER);
                },
                error: function () {
                    alert("出错啦");
                }
            });
        }

        function getTableContent() {
            var a1 = new Array();
            var mytable = document.getElementById('testTable1');
            var data = [];
            for (var i = 0, rows = mytable.rows.length; i < rows; i++) {

                for (var j = 0, cells = mytable.rows[i].cells.length; j < cells; j++) {
                    if (!data[i]) {
                        data[i] = new Array();
                    }
                    data[i][j] = mytable.rows[i].cells[j].innerText;
                }
            }
            return data;
        }


        function getMsg1() {
            var a1 = new Array();

            var v1 = $('#t1').val();
            var v2 = $('#t2').val();
            var v3 = $('#t3').val();
            a1.push(v1);
            a1.push(v2);
            a1.push(v3);

            $.ajax({
                type: "POST",
                url: "/test/testList",
                data: {"datas": a1},
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("出错啦");
                }
            });
        }

        function getMsg2() {
            var a1 = new Array();

            var v1 = $('#t1').val();
            var v2 = $('#t2').val();
            var v3 = $('#t3').val();
            a1.push(v1);
            a1.push(v2);
            a1.push(v3);

            $.ajax({
                type: "POST",
                url: "/test/testList2",
                data: JSON.stringify(a1),
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("出错啦");
                }
            });
        }

        function getMsg3() {
            var list = new Array();

            var v1 = $('#t1').val();
            var v2 = $('#t2').val();
            var v3 = $('#t3').val();
            list.push(v1);
            list.push(v2);
            list.push(v3);
            $.ajax({
                type: "POST",
                url: "/test/testList3",
                // data: JSON.stringify({"list":list}),
                // data: {"list":list},
                data: {"haha": "xx"},
                // data: JSON.stringify({"haha":"xx"}),
                dataType: "json",
                // contentType: "application/json; charset=utf-8",
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("出错啦");
                }
            });
        }

        function getMsg4() {
            $.ajax({
                type: "POST",
                url: "/test/testjson",
                data: {"jj": "xx"},
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("出错啦");
                }
            });
        }

        function getMsg5() {

            var customerArray = new Array();
            customerArray.push({name: "李四", pwd: "123"});
            customerArray.push({name: "张三", pwd: "332"});

            var strArray = new Array();
            strArray.push("aaa");
            strArray.push("bbb");
            strArray.push("ccc");
            var user = {};
            user.name = "李刚";
            user.pwd = "888";
            user.customers = customerArray;
            user.strList = strArray;
            $.ajax({
                type: "POST",
                url: "/test/testModel",
                data: JSON.stringify(user),//将对象序列化成JSON字符串
                dataType: "json",
                // contentType : 'application/json;charset=utf-8', //设置请求头信息
                success: function (data) {
                    alert(JSON.stringify(data));
                },
                error: function (res) {
                    alert("出错啦");
                }
            });
        }

        function getMsg5() {

            var customerArray = new Array();
            customerArray.push({name: "李四", pwd: "123"});
            customerArray.push({name: "张三", pwd: "332"});

            var strArray = new Array();
            strArray.push("aaa");
            strArray.push("bbb");
            strArray.push("ccc");
            var user = {};
            user.name = "李刚";
            user.pwd = "888";
            user.customers = customerArray;
            user.strList = strArray;
            $.ajax({
                type: "POST",
                url: "/test/testModel",
                data: JSON.stringify(user),//将对象序列化成JSON字符串
                dataType: "json",
                // contentType : 'application/json;charset=utf-8', //设置请求头信息
                success: function (data) {
                    alert(JSON.stringify(data));
                },
                error: function (res) {
                    alert("出错啦");
                }
            });
        }
    })
</script>
</html>