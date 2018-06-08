<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
    <%@include file="/common/bootstrap.jsp"%>
    <link href="/style/main.css" rel="stylesheet" type="text/css">
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
                        <a href="#" onclick="javascript:alert('欢迎您：${ username }')" >当前用户：<span class="badge" >${ username }</span></a>
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
                    <a href="#" onclick='javascript:openPage("/main/test?title=用户管理")'>用户管理</a>
                </li>
                <li role="presentation">
                    <a href="#" onclick='javascript:openPage("/main/test?title=商品添加")'>商品添加</a>
                </li>
                <li role="presentation">
                    <a href="#" onclick='javascript:openPage("/main/test?title=商品管理")'>商品管理</a>
                </li>
                <li role="presentation">
                    <a href="#" onclick='javascript:openPage("/main/test?title=导航链接4")'>导航链接4</a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        导航链接5<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#" onclick='javascript:openPage("/main/test?title=导航链接5&title2=导航链接5-1")'>导航链接5-1</a>
                        </li>
                        <li>
                            <a href="#" onclick='javascript:openPage("/main/test?title=导航链接5&title2=导航链接5-2")'>导航链接5-2</a>
                        </li>
                        <li>
                            <a href="#" onclick='javascript:openPage("/main/test?title=导航链接5&title2=导航链接5-3")'>导航链接5-3</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- 左侧导航和正文内容的分隔线 -->
        <div class="splitter"></div>
        <!-- 正文内容部分 -->
        <div class="pageContent" id="page"></div>
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
    $(function () {
        openPage("/main/test?title=用户管理");
    });

    $(".nav li").click(function() {
        $(".active").removeClass('active');
        $(this).addClass("active");
    });



    function openPage(url){
        var html ="";
        html = html + '<iframe src=" '+url+ ' " frameborder="0" width="100%"  height="100%" frameBorder="0"></iframe> ';
        $("#page").html(html);
    }
</script>
</html>
