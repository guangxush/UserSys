<%--
  Created by IntelliJ IDEA.
  User: Consule
  Date: 2017/9/3
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <a href="login.jsp" class="btn btn-primary btn-lg active" role="button">登陆</a>
  </body>
</html>
