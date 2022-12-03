<%--
  Created by IntelliJ IDEA.
  User: jungwonchae
  Date: 2022/12/03
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div class="container">
    <div style="margin-top:20px">
        <h1>Add New Post</h1>
    </div>
    <form action="/addok" method="post" class="row g-3" enctype="multipart/form-data">
        <table id="edit">
            <tr class="col-md-12"><td>Item</td><td><input type="text" class="form-control" name="item"></td></tr>
            <tr class="col-md-12"><td>Writer</td><td><input type="text" class="form-control" name="writer"></td></tr>
            <tr class="col-md-6"><td>Photo</td><td><input type="file" class="form-control" name="photo"></td></tr>
            <tr class="col-md-12"><td>Price</td><td><input type="text" class="form-control" name="price"></td></tr>
            <tr class="col-md-12"><td>Content</td><td><textarea cols="50" rows="5" class="form-control" name="content"></textarea></td></tr>
            <tr class="col-md-12"><td>Method</td><td><input type="text" class="form-control" name="method"></td></tr>
        </table>

        <table class="col-md-12">
            <tr type="submit"><td><a class="btn btn-light" href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post" class="btn btn-primary"/></td></tr>
        </table>
    </form>
</div>


</body>
</html>
