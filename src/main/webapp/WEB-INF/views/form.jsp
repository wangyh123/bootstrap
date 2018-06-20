<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form表单提交</title>
    <%@include file="/common/bootstrap.jsp"%>
</head>
<body>
<!-- form表单注释（查看源代码时显示出来的注释）-->
<%-- form表单注释（查看源代码时显示不出来的注释）--%>
<form id="tt">
    <table>
        <tr>
            <td> <label>用户名：</label></td>
            <td> <input id="username" name="username" /></td>
        </tr>
        <tr>
            <td><label>密码：</label></td>
            <td><input id="password" name="password" /></td>
        </tr>
        <tr>
            <td><label>性别：</label></td>
            <td><input name="sex" type="radio" checked="checked" value="男"/>男
                <input name="sex" type="radio" value="女"/> 女</td>
        </tr>
        <tr>
            <td><label>地址：</label></td>
            <td><select id="adr" name="adr">
                <option>==请选择地址==</option>
                <option>北京</option>
                <option>上海</option>
                <option>广州</option>
                <option>深圳</option>
            </select></td>
        </tr>
        <tr>
            <td><input type="button" value="提交" onclick="tijiao()"/></td>
        </tr>
    </table>
</form>
</body>
<script>
    function tijiao(){
        var username = $("#username").val();
        var password = $("#password").val();
        var adr = $("#adr").val();
        var sex = $('input[name="sex"]:checked ').val();

        alert("==="+username+"=="+password+"==="+sex+"==="+adr);
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "text",//预期服务器返回的数据类型
            data: $('#tt').serialize(),
            url: "/index/formTest1",//url
            success: function (data) {
               if(data!=null){
                   alert(data);
               }
            },
            error : function() {
                alert("异常！");
            }
        });
    }
</script>
</html>
