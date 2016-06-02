<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>吉他之家</title>
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
<a href="guitars.jsp">返回首页</a>
	<table class="table table-bordered table-hover">
		<tr>
			<td>ID</td>
			<td>price</td>
			<td>builder</td>
			<td>model</td>
			<td>type</td>
			<td>wood</td>
		</tr>
	<c:forEach items="${matchingGuitars}" var="guitars" varStatus="status">
	       <tr>
			    <td>${guitars.getId()}</td>
				<td>${guitars.getPrice()}</td>
				<td>${guitars.getSpec().getBuilder()}</td>
				<td>${guitars.getSpec().getModel()}</td>
				<td>${guitars.getSpec().getType()}</td>
				<td>${guitars.getSpec().getWood()}</td>
			</tr>
	</c:forEach>
	</table>
</body>
</html>