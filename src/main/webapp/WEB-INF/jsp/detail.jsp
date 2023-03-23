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
			<dl>
				<dt>
					书籍名字
				</dt>
				<dd>
					<br>${book.bookName}<br>
				</dd>
				<dt>
					<br>书籍数量
				</dt>
				<dd>
					<br>${book.bookCounts}
				</dd>
				<dt>
					<br>书籍详情
				</dt>
				<dd>
					<br><p>${book.detail}</p>
				</dd>
			</dl>
			<form action="allbook" method="get">
				<fieldset>
					 <button type="submit" class="btn">返回主页</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>


