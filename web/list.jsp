<%--
  Created by IntelliJ IDEA.
  User: Consule
  Date: 2017/9/3
  Time: 11:50
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
<div class="form-group col-md-offset-2">
    <a href="add.jsp" class="btn btn-primary btn-lg active" role="button">添加用户</a>
</div>
<div class="form-group col-md-8 col-md-offset-2">
<table class="table table-striped" width="80%" align="center">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>会员等级</th>
        <th>操作</th>
    </tr>
    <s:iterator value="list" var="bean">
    <tr>
        <td><s:property value="#bean.id"/></td>
        <td><s:property value="#bean.name"/></td>
        <td><s:property value="#bean.pwd"/></td>
        <td><s:property value="vipmap[#bean.Vipid]"/></td>
        <td><a href="toUpdate?user.id=<s:property value="id"/>" class="btn btn-primary active" role="button">修改</a>
            <a href="toDelete?user.id=${bean.id}"class="btn btn-primary  active" role="button">删除</a>
        </td>
    </tr>
    </s:iterator>
    <tr></tr>
</table>
</div>
</body>
</html>

