<%@ page import="com.domain.Goods" %>
<%@ page import="com.service.GoodsServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.service.GoodsService" %><%--
  Created by IntelliJ IDEA.
  User: chenb
  Date: 2021/1/11
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>


<form action="addSubmit.jsp" method="post">
    <table border="1px" width="500px">
        <tr>
            <td>编号</td>
            <td>名称</td>
            <td>价格</td>
        </tr>

        <tr>
            <td><input type="text" id="goodid" name="goodid" maxlength="5" size="20" placeholder="请输入商品id"> </td>
            <td><input type="text" id="goodName" name="goodName" maxlength="5" size="20" placeholder="请输入商品名称"> </td>
            <td><input type="text" id="price" name="price" maxlength="5" size="20" placeholder="请输入商品价格"> </td>
        </tr>



        <tr><td colspan="3" align="center"><input type="submit"></td></tr>

    <table/>

</form>



</table>


</body>
</html>
