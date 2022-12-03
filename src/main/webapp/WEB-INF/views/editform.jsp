<%--
  Created by IntelliJ IDEA.
  User: jungwonchae
  Date: 2022/12/03
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%--<%--%>
<%--    BoardDAO boardDAO = new BoardDAO();--%>
<%--    String id=request.getParameter("id");--%>
<%--    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));--%>
<%--    request.setAttribute("vo",u);--%>
<%--%>--%>
<div class="container">
    <div style="margin-top:20px">
        <h1>수정페이지</h1>
    </div>
    <form:form modelAttribute="u" method="POST" action="../editok">
        <form:hidden path="seq" />
            <table id="edit">
                <tr class="col-md-12"><td>Item</td><td><form:input path="item" class="form-control"/></td></tr>
                <tr class="col-md-12"><td>Writer</td><td><form:input path="writer" class="form-control"/></td></tr>
                <tr class="col-md-6"><td>Photo</td><td><form:input type="file" path="photo" class="form-control"/></td></tr>
                <tr class="col-md-12"><td>Price</td><td><form:input path="price" class="form-control"/></td></tr>
                <tr class="col-md-12"><td>Content</td><td><form:textarea cols="50" rows="5" path="content" class="form-control"/></tr>
                <tr class="col-md-12"><td>Method</td><td><form:input path="method" class="form-control"/></td></tr>
            </table>
            <table>
                <tr><td colspan="2"><input type="submit" value="Edit Post" class="btn btn-primary"/>
                    <input type="button" value="Cancel" onclick="history.back()" class="btn btn-danger"/></td></tr>
            </table>
    </form:form>
</div>
</body>
</html>
