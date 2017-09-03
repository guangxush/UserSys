<%--
  Created by IntelliJ IDEA.
  User: Consule
  Date: 2017/9/3
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">

    <title></title>

    <link rel="stylesheet" type="text/css"  href="js/bootstrap.min.css">
    <script type="javascript" src="js/bootstrap.min.js"></script>
    <script type="javascript" src="js/jquery-3.2.1.min.js"></script>
    <meta charset="UTF-8">

</head>

<body>
<form action="login.action" method="post" >
    <div class="input-group input-group-lg col-md-4 col-md-offset-4">
        <span class="input-group-addon" id="basic-addon1">username</span>
        <input type="text" class="form-control" name="user.name" placeholder="Username" aria-describedby="basic-addon1">
    </div>
    <div class="form-group"></div>
    <div class="input-group input-group-lg col-md-4 col-md-offset-4">
        <span class="input-group-addon" id="basic-addon2">password </span>
        <input type="password" class="form-control" name="user.pwd" placeholder="Password" aria-describedby="basic-addon2">
    </div>
    <div class="form-group"></div>
    <div class="form-group col-md-4 col-md-offset-4 ">
        <input type="submit" value="登陆" class="btn btn-primary  btn-lg col-md-12 ">
    </div>

</form>
</body>
</html>

