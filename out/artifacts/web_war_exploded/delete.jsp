<%@ page import="com.service.GoodsService" %>
<%@ page import="com.service.GoodsServiceImpl" %>
<%@ page import="com.domain.Goods" %><%--
  Created by IntelliJ IDEA.
  User: chenb
  Date: 2021/1/11
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
</head>
<body>

<%


    //调用service进行数据操作
    GoodsService goodsService = new GoodsServiceImpl();

    goodsService.delete(Integer.parseInt(request.getParameter("goodid")));

    response.sendRedirect("list.jsp");


%>

</body>
</html>
