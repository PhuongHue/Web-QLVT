
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<title>Thêm Nhà Sản xuất</title>
        <link type="text/css" rel="stylesheet" href="css/headercss.css">
        <link type="text/css" rel="stylesheet" href="css/addstyle.css">


</head>
<body>
	
<%@ include file = "/header/header.jsp" %>
	<div id="container">
		<form action="ProducerServletController" method="get">
			<input type="hidden" name="command" value="ADD" />
			<table>
				<tbody>
					<tr>
						<td><label>Tên nhà sản xuất:</label></td>
						<td><input type="text" name="nameProducer"></td>
					</tr>

					<tr>
						<td><label>Ngày thành lập:</label></td>
						<td><input type="text" name="dobString"></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Thêm NSX" class="save" /></td>
					</tr>

				</tbody>
				<p>
					<a href=ProducerServletController>Quay lại danh sách</a>
				</p>
			</table>
		</form>
	</div>




</body>
</html>