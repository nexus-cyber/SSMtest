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
<script>
function a(id,csrftocken){
	var res = confirm("是否删除");
	if (res){
		var httpRequest = new XMLHttpRequest();
		httpRequest.open('GET', "${pageContext.request.contextPath}/deletebook?id="+id+"&csrftocken="+csrftocken, true);
		httpRequest.send();
		httpRequest.onreadystatechange = function () {
            if (httpRequest.status == 200) {
                window.location.href=window.location.protocol+"//"+window.location.hostname+":"+window.location.port+"/maven_web/allbook";
            }
            else{
            	alert("删除失败");
            }
        };
	}
}
</script>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-search form-inline" action="${pageContext.request.contextPath}/searchbook" method="post">
				<input class="input-medium search-query" type="text" name="bookname" value="${name}" /> <button type="submit" class="btn">查找</button>
			</form>
			<form class="form-search form-inline" action="${pageContext.request.contextPath}/addbook" method="get">
				<button type="submit" class="btn" >新增书籍</button>
			</form>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							书籍编号
						</th>
						<th>
							书籍名字
						</th>
						<th>
							书籍数量
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="book" items="${list}">
   						<tr>
    					<td>${book.bookID}</td>
    					<td>${book.bookName}</td>
    					<td>${book.bookCounts}</td>
    					<td><a href="${pageContext.request.contextPath}/updatebook?id=${book.bookID}">修改</a>|<a onclick="a(${book.bookID},'${csrftocken}')">删除</a>|<a href="${pageContext.request.contextPath}/detail?id=${book.bookID}">详情</a></td>
    					</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			<form class="form-search form-inline" action="${pageContext.request.contextPath}/quit" method="get">
				<button type="submit" class="btn" style="float:right">退出登录</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>


