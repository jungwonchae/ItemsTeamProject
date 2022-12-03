<%--
  Created by IntelliJ IDEA.
  User: jungwonchae
  Date: 2022/12/03
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: white;
            color: black;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<div class="container">
    <div style="margin-top:20px">
        <h1>자유게시판</h1>
    </div>
<%--    <%--%>
<%--        BoardDAO boardDAO = new BoardDAO();--%>
<%--        List<BoardVO> list = boardDAO.getBoardList();--%>
<%--        request.setAttribute("list",list);--%>
<%--    %>--%>
    <table id="list" width="90%" class="table table-hover">
        <tr>
            <th>Id</th>
            <th>Item</th>
            <th>Writer</th>
            <th>Price</th>
            <th>Content</th>
            <th>Method</th>
            <th>Date Written</th>
            <th>Updated At</th>
            <th>View</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getSeq()}</td>
                <td>${u.getItem()}</td>
                <td>${u.getWriter()}</td>
                <td>${u.getPrice()}</td>
                <td>${u.getContent()}</td>
                <td>${u.getMethod()}</td>
                <td>${u.getRegdate()}</td>
                <td>${u.getUpdateAt()}</td>
                <td><a href="view/${u.getSeq()}" class="btn btn-success">View</a></td>
                <td><a href="editform/${u.getSeq()}" class="btn btn-warning">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.getSeq()}')" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/><button type="button" onclick="location.href='add'" class="btn btn-primary">Add New Post</button>
</div>
</body>
</html>
