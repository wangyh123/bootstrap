<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@include file="/common/bootstrap.jsp"%>
    <link rel="stylesheet" href="/css/login.css" type="text/css" media="all" />
</head>
<body>
<div class="container">
    <h1>REGISTER</h1>
    <div class="contact-form">
        <div class="signin">
            <form>
                <p>Username</p>
                <input type="text" class="user"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Here';}" />
                <p>Password </p>
                <input type="password" class="pass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
                <input type="submit" value="Register" />
            </form>
        </div>
    </div>
</div>
<div class="footer">
    <p>2018 @ we are family!</p>
</div>

</body>

</html>