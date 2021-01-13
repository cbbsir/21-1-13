<%@ page import="com.domain.Goods" %>
<%@ page import="com.service.GoodsServiceImpl" %>
<%@ page import="com.service.GoodsService" %><%--
  Created by IntelliJ IDEA.
  User: chenb
  Date: 2021/1/11
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateSubmit</title>
</head>
<body>

<%

    //post提交数据，乱码解决方案
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");

    //调用service进行数据操作
    GoodsService goodsService = new GoodsServiceImpl();
    Goods good = new Goods();
    good.setGoodid(Integer.parseInt(request.getParameter("goodid")));
    good.setName(request.getParameter("goodName"));
    good.setPrice(Double.valueOf(request.getParameter("price")));
    goodsService.update(good.getGoodid(),good);


    int i = goodsService.update(good.getGoodid(),good);
    response.sendRedirect("list.jsp");
    out.print(good);
    out.print(11111);

%>

</body>
</html>
