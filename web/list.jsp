
<%@ page import="com.service.GoodsService" %>
<%@ page import="com.service.GoodsServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.domain.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>商品列表管理EL&&JSTL</h1>
    <%
        //调用service进行数据操作
        GoodsService goodsService = new GoodsServiceImpl();
        List<Goods> list = goodsService.list();

       request.setAttribute("list",list);
    %>
    <a href="add.jsp">新增</a><br/>
    <table border="1px" width="500px">
        <tr>
            <td>编号</td>
            <td>名称</td>
            <td>价格</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="l" varStatus="s">
        <tr>
            <td>${l.goodid} </td>
            <td>${l.name}</td>
            <td>${l.price} </td>
            <td>
                <a href="update.jsp?goodid=${l.goodid}&name=${l.name}&price=${l.price} ">修改</a>
                <a href="delete.jsp?goodid=${l.goodid} "  onclick="return confirm('是否删除？')">删除</a>
            </td>
        </tr>
        </c:forEach>
    </table>


</body>
</html>
