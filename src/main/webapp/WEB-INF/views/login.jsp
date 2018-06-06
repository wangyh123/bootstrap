<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@include file="/common/bootstrap.jsp"%>
    <link rel="stylesheet" href="/css/login.css" type="text/css" media="all" />
</head>
<body>
<div class="container">
    <h1>WELCOME</h1>
    <div class="contact-form">
        <div class="signin">
            <%--<form>--%>
                <%--<p>Username</p>--%>
                <%--<input type="text" name="username"   />--%>
                <%--<p>Password </p>--%>
                <%--<input type="password" name="password"   />--%>
                <%--<input type="submit" value="Login"/>--%>
                <%--<p><a href="/login/register">Register?  </a></p>--%>
            <%--</form>--%>

            <form id="loginForm" method="post" action="/login/main">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control" name="username" />
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" />
                </div>
                <div class="form-group">
                    <button type="submit" name="submit" >Login</button>
                </div>
                <div><p><a href="/login/register">Register?  </a></p></div>
            </form>
        </div>
    </div>
</div>
<div class="footer">
    <p>2018 @ we are family!</p>
</div>

</body>


<script>

    $(function () {
        $('loginForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                }
            },
            submitHandler: function (validator, form, submitButton) {
                location.href="/login/main";
            }
        });
    });

    function register(){
        location.href="/login/register";
    }
    function login(){
        location.href="/login/main";
    }
</script>


</html>