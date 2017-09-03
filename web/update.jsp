<%--
  Created by IntelliJ IDEA.
  User: Consule
  Date: 2017/9/3
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<form action="update.action" method="post" >
    <input type="hidden" name="user.id" value="<s:property value="user.id"/>"/>
    <div class="form-group col-md-4 col-md-offset-4">
        <label for="username">姓名：</label>
        <input id="username"name="user.name" class="form-control" type="text" value="<s:property value="user.name"/>">
    </div>
    <div class="form-group col-md-4 col-md-offset-4">
        <label for="password">密码：</label>
        <input id="password" type="password" class="form-control" name="user.pwd" value="<s:property value="user.pwd"/>"><br>
    </div>
    <div class="form-group col-md-4 col-md-offset-4">
    <select class="form-control selectpicker" data-live-search="true" name="user.vipid">
    <s:iterator value="vipmap">
        <option <s:if test="user.vipid==key">selected</s:if> value="<s:property value="key"/>"> <s:property value="value"/> </option>
    </s:iterator>
     </select>
    </div>
    <div class="form-group col-md-4 col-md-offset-4 ">
        <input type="submit" value="修改" class="btn btn-primary  btn-lg col-md-12 ">
    </div>

</form>

</body>
</html>

