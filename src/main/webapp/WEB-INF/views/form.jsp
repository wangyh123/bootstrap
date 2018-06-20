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
            <td>
                <label>用户名：</label>
            </td>
            <td>
                <input id="username" name="username" />
            </td>
        </tr>
        <tr>
            <td>
                <label>密码：</label>
            </td>
            <td>
                <input id="password" name="password" />
            </td>
        </tr>
        <tr>
            <td>
                <label>性别：</label>
            </td>
            <td>
                <input name="sex" type="radio" checked="checked" value="男"/>男
                <input name="sex" type="radio" value="女"/> 女
            </td>
        </tr>
        <tr>
            <td><label>地址：</label></td>
            <td>
                <select id="adr" name="adr">
                    <option>==请选择地址==</option>
                    <option>北京</option>
                    <option>上海</option>
                    <option>广州</option>
                    <option>深圳</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label>身份证：</label>
            </td>
            <td>
                <input id="sfz" name="sfz" />
            </td>
        </tr>
        <tr>
            <td>
                <label>手机号：</label>
            </td>
            <td>
                <input id="phone" name="phone" />
            </td>
        </tr>
        <tr>
            <td>
                <label>邮箱：</label>
            </td>
            <td>
                <input id="e_mail" name="e_mail" />
            </td>
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
        var sex = $('input[name="sex"]:checked ').val();
        var adr = $("#adr").val();
        var sfz = $("#sfz").val();
        var phone = $("#phone").val();
        var e_mail = $("#e_mail").val();

        //验证用户名不能为空
        if(username==null||username==""){
           alert("用户名不能为空！");
        }else{
           //验证密码不为空
            yzPwd();
        }

        function yzPwd(){
            if(password==null||password==""){
                alert("密码不能为空！");
            }else{
                //验证性别不能为空
                yzSex();
            }
        }

        function yzSex(){
            if(sex==null||sex==""){
                alert("请选择性别！");
            }else{
                //验证地址
                yzAdr();
            }
        }

        function yzAdr(){
            if(adr=="==请选择地址=="){
                alert("请选择地址！");
            }else{
                //验证身份证
                yzSfz();
            }
        }

        function yzSfz(){
            //身份证的正则表达式
             var reg = "(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)";
             if(sfz == null | sfz == ""){
                 alert("请输入身份证号！");
             }else if(sfz.search(reg) != 0 ){
                 alert("请输入正确的身份证号！");

             }else{
                     //验证手机号
                     yzPhone();
             }
        }

        function yzPhone(){
            //手机号正则表达式
            var reg = "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$";
           if(phone == null | phone == ""){
               alert("请输入手机号！");
           }else if(phone.search(reg) != 0){
                alert("请输入正确的手机号！");
           }else{
                //验证邮箱
                yzEmail();
           }
        }

        function yzEmail(){
            //e_mail正则表达式
            var reg = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
            if(e_mail==null | e_mail==""){
                alert("请输入邮箱！");
            }else if(e_mail.search(reg) != 0){
                alert("请输入正确的邮箱！");
            }else{
                //验证通过提交表单
                request();
            }
        }

        function request(){
            alert("==="+username+"=="+password+"==="+sex+"==="+adr+"==="+sfz+"==="+phone+"==="+e_mail);
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "text",//预期服务器返回的数据类型
//                data: $('#tt').serialize(),
                data:{
                    "username":username,
                    "password":password,
                    "sex": sex,
                    "adr": adr,
                    "sfz": sfz,
                    "phone": phone,
                    "e_mail": e_mail
                },
//                url: "/index/formEntity",
                url: "/index/formParam",
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

    }
</script>
</html>
