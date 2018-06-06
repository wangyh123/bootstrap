<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <%@include file="/common/bootstrap.jsp"%>
    <link rel="stylesheet" href="/style/login.css" type="text/css" media="all" />
</head>
<body>
<div class="container">
    <h1>REGISTER</h1>
    <div class="contact-form">
        <div class="signin">
            <form id="RegisterForm" method="post" action="/login/main">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control" name="username" />
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" />
                </div>
                <div class="form-group">
                    <button type="submit" name="submit" >Register</button>
                </div>
                <div><p><a href="/register/login">Back ?  </a></p></div>
            </form>
        </div>
    </div>
</div>
<div class="footer">
    <p>2018 @ we are family!</p>
</div>

</body>

</html>