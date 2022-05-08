<%--
  Created by IntelliJ IDEA.
  User: kkqqmmmm
  Date: 2022/4/30
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook"method="post">
<%--        <div class="form-group">--%>
<%--            <label>书籍名称：</label>--%>
<%--            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label>书籍数量：</label>--%>
<%--            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label>书籍描述：</label>--%>
<%--            <input type="text" name="detail" class="form-control" value="${QBook.detail}" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <input type="submit" class="form-control" value="修改" >--%>
<%--        </div>--%>
        <%--出现的问题:我们提交了修改的SQL请求，但是修改失败，初次考虑，是事务问题，配置完毕事务，依旧失败! --%>
        <%--看一下SQL语句，能否执行成功: SQL 执行失败，修改未完成--%>
        <%--前端传递隐藏域  <input type="hidden" name="bookID" value="${QBook.getBookID()}"/> --%>
        <input type="hidden" name="bookID" value="${QBook.getBookID()}"/>
        书籍名称：<input type="text" name="bookName"value="${QBook.getBookName()}"/>
        书籍数量：<input type="text" name="bookCounts"value="${QBook.getBookCounts()}"/>
        书籍详情：<input type="text" name="detail" value="${QBook.getDetail() }"/>
        <input type="submit" value="提交"/>
    </form>

</div>
