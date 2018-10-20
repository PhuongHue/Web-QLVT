<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Quản lý Nhà sản xuất</title>
        <link type="text/css" rel="stylesheet" href="css/headercss.css">
        <link type="text/css" rel="stylesheet" href="css/addstyle.css">
    </head>
    <body>
        <%@ include file = "/header/header.jsp" %>
        <div id="container">
            <div id="content">             
                <table>
                    <tr>
                        <th>Tên nhà sản xuất</th>
                        <th>Ngày TL</th>
                        <th>Cập Nhật</th>
                    </tr>
                    <c:forEach var="tempProducer" items="${PRODUCER_LIST}">
                        <!-- set up a link for each student -->
                        <c:url var="tempLink" value="ProducerServletController">
                            <c:param name="command" value="LOAD" />
                            <c:param name="producerId" value="${tempProducer.id}" />
                        </c:url>
                        <c:url var="deleteLink" value="ProducerServletController">
                            <c:param name="command" value="DELETE" />
                            <c:param name="producerId" value="${tempProducer.id}" />
                        </c:url>
                        <tr>
                            <td> ${tempProducer.name} </td>
                            <td> ${tempProducer.dobString} </td>
                            <td> 
                                <a href="${tempLink}">Update</a> 
                                | 
                                <a href="${deleteLink}"
                                   onclick="if (!(confirm('Bạn có muốn xóa nhà sản xuất này không?')))
                                               return false">
                                    Delete</a>	
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div>
                    <a  class="button right" href="ProducerServletController?command=NEW">Thêm Nhà Sản Xuất</a>
                </div>
            </div>
        </div>
    </body>
</html>








