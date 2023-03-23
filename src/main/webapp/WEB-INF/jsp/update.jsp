<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="ISO-8859-1">
<title>Spring MVC demo</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form action="${pageContext.request.contextPath}/updatebookimpl" method="post">
				<fieldset>
					<input type="text" name="bookID" value="${book.bookID}" style = "display:none"/><legend>修改书籍</legend> <label>书籍名称</label><br><input type="text" name="bookName" value="${book.bookName}"/><br /><label>书籍数量</label><br><input type="text" name="bookCounts" value="${book.bookCounts}"/> <br /> <label>书籍描述</label><br><textarea  name="detail" style="width: 422px; height: 267px;">${book.detail}</textarea><br /><input type="hidden" name="csrftocken" value="${csrftocken}"/><button class="btn" type="submit">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>

