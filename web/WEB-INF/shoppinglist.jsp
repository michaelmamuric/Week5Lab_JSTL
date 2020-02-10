<%-- 
    Document   : shoppinglist
    Created on : Feb 10, 2020, 12:38:42 PM
    Author     : 799470
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${sessionScope.username} <a href="?action=logout">Logout</a>
        <h2>List</h2>
        <form method="get">
            Add item: <input type="text" name="itemName" />
            <input type="submit" name="action" value="Add" />
            <br />
            <c:if test="${!empty(shoppingList)}">
                <c:forEach items="${shoppingList}" var="list">
                    <input type="radio" name="list" value="${list}" />${list}<br />
                </c:forEach>
            </c:if>
        </form>
    </body>
</html>
