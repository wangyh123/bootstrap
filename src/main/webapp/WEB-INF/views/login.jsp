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
            <form action="/login/main">
                <p>Username</p>
                <input type="text" id="username" class="user" value="Enter Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Here';}" />
                <p>Password </p>
                <input type="password" id="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
                <input type="submit" value="Login"/>
                <p><a href="/login/register">Register?  </a></p>
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
</script>


</html>