<%@ page import="com.service.GoodsService" %>
<%@ page import="com.domain.Goods" %>
<%@ page import="com.service.GoodsServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: chenb
  Date: 2021/1/11
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>


<form action="updateSubmit.jsp" method="post">
    <table border="1px" width="500px">
        <tr>
            <td>编号</td>
            <td>名称</td>
            <td>价格</td>
        </tr>

        <tr>
            <td><input type="text" id="goodid" name="goodid" maxlength="10" size="20" value="${param.goodid}"> </td>
            <td><input type="text" id="goodName" name="goodName" maxlength="10" size="20" value="${param.name}"> </td>
            <td><input type="text" id="price" name="price" maxlength="10" size="20" value="${param.price}"> </td>
        </tr>



        <tr><td colspan="3" align="center"><input type="submit"></td></tr>

        <table/>

</form>



</body>
</html>
