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
			<form action="login" method="post" id="form">
				<fieldset>
					<legend>用户登录</legend> <label>用户名</label><input type="text" name="name"/><br /> <label>密码&nbsp&nbsp&nbsp&nbsp</label><input type="password" name="pass" id=pass/><span class="help-block">${error}</span> <label class="checkbox"> <button class="btn" type="submit" >提交</button></label>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>