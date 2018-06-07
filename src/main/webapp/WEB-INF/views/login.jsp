<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <%@include file="/common/bootstrap.jsp"%>
    <link rel="stylesheet" href="/style/login.css" type="text/css" media="all" />
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

            <form id="loginForm" method="post">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control" name="username" />
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" />
                </div>
                <div class="form-group">
                    <button type="submit" name="submit" onclick="check()">Login</button>
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
    function register(){
        location.href="/login/register";
    }

   function check() {
        $('#loginForm').bootstrapValidator({
            message: '值未验证!',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: '用户名未验证!',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空!'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空!'
                        }
//                        callback: {
//                            callback: function(value, validator) {
//                                // Check the password strength
//                                if (value.length < 6) {
//                                    return {
//                                        valid: false,
//                                        message: '密码不能少于6位.'
//                                    }
//                                }
//                                return true;
//                            }
                        }
                    }
                }
        }).on('success.form.bv', function (e) {
            // Prevent form submission
            e.preventDefault();
            // Get the form instance
            var $form = $(e.target);
            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');
            // Use Ajax to submit form data
            $.post("/login/check", $form.serialize(), function (data) {
                if(data==""||data==null){
                    alert("用户名或密码错误!");
                }else{
                    location.href="/login/main?username="+data;
                }

            });
        });
    }
</script>


</html>