<pre name= "code" class="java"></pre>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
			<form action="${pageContext.request.contextPath}/addbookimpl" method="post">
				<fieldset>
					 <legend>添加书籍</legend> <label>书籍名称</label><br><input type="text" name="bookName"/> <br/><label>书籍数量</label><br><input type="text" name="bookCounts"/><br/> <label>书籍描述</label><br><textarea name="detail"style="width: 422px; height: 267px;"></textarea> <br/><input type="hidden" name="csrftocken" value="${csrftocken}"/><button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>