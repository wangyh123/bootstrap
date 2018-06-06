<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
    <%@include file="/common/bootstrap.jsp"%>
    <link href="/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <!--顶部导航栏部分-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" title="logoTitle" href="#">后台管理系统</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation">
                        <a href="#">当前用户：<span class="badge">admin</span></a>
                    </li>
                    <li>
                        <a href="/main/login">
                            <span class="glyphicon glyphicon-lock"></span>退出登录</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 中间主体内容部分 -->
    <div class="pageContainer">
        <!-- 左侧导航栏 -->
        <div class="pageSidebar">
            <ul class="nav nav-stacked nav-pills">
                <li role="presentation" class="active">
                    <a href="/index/test" target="mainFrame">用户管理</a>
                </li>
                <li role="presentation">
                    <a href="/index/test" target="mainFrame">商品添加</a>
                </li>
                <li role="presentation">
                    <a href="/index/test" target="mainFrame">商品管理</a>
                </li>
                <li role="presentation">
                    <a href="/index/test" target="mainFrame">导航链接4</a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        导航链接5<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/index/test" target="mainFrame">导航链接5-1</a>
                        </li>
                        <li>
                            <a href="/index/test" target="mainFrame">导航链接5-2</a>
                        </li>
                        <li>
                            <a href="/index/test" target="mainFrame">导航链接5-3</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- 左侧导航和正文内容的分隔线 -->
        <div class="splitter"></div>
        <!-- 正文内容部分 -->
        <div class="pageContent">
            <iframe src="/index/test" id="mainFrame" name="mainFrame" frameborder="0" width="100%"  height="100%" frameBorder="0"></iframe>
        </div>
    </div>

    <!-- 底部页脚部分 -->
    <div class="footer">
        <p class="text-center">
            2018 &copy; we are family.
        </p>
    </div>

</div>

</body>

<script>
    $(".nav li").click(function() {
        $(".active").removeClass('active');
        $(this).addClass("active");
    });
</script>
</html>
