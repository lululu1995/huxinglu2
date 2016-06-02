<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bll.GuitarBll"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>吉他之家</title>
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
    <a href="guitars.jsp"><h3>首页</h3></a>
       <form action="search">
                                   制造商<input type="text" name="builder"/>
                                   型     号<input type="text" name="model"/>
                                   类     型<input type="text" name="type"/>
                                   材     质<input type="text" name="wood"/>
             <input type="submit" value="查询"/>
       </form>
       
	<table class="table table-bordered table-hover">
		<tr>
			<td>ID</td>
			<td>price</td>
			<td>builder</td>
			<td>model</td>
			<td>type</td>
			<td>wood</td>
		</tr>
		<c:forEach var="guitar" items="${GuitarBll.inventory().getGuitars()}">
				<tr>
					<td>${guitar.getId()}</td>
					<td>${guitar.getPrice()}</td>
					<td>${guitar.getSpec().getBuilder()}</td>
					<td>${guitar.getSpec().getModel()}</td>
					<td>${guitar.getSpec().getType()}</td>
					<td>${guitar.getSpec().getWood()}</td>
				</tr>
		</c:forEach>
	</table>
</body>
</html>