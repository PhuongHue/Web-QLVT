<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Quản lý Vật tư</title>
        <link type="text/css" rel="stylesheet" href="css/headercss.css">
        <link type="text/css" rel="stylesheet" href="css/addstyle.css">
    </head>
    <body>
        <%@ include file = "/header/header.jsp" %>
        <div id="container">
            <div id="content">
                <!-- put new button: Add materials -->
                <table>
                    <tr>
                        <th>Tên Vật Tư</th>
                        <th>Giá</th>
                        <th>Vật tư Vật tư</th>
                        <th>Cập Nhật</th>
                    </tr>
                    <c:forEach var="tempMaterials" items="${MATERIALS_LIST}">
                        <!-- set up a link for each student -->
                        <c:url var="tempLink" value="MaterialsControllerServlet">
                            <c:param name="command" value="LOAD" />
                            <c:param name="materialsId" value="${tempMaterials.id}" />
                        </c:url>
                        <c:url var="deleteLink" value="MaterialsControllerServlet">
                            <c:param name="command" value="DELETE" />
                            <c:param name="materialsId" value="${tempMaterials.id}" />
                        </c:url>
                        <tr>
                            <td> ${tempMaterials.name} </td>
                            <td> ${tempMaterials.price} </td>
                            <td> ${tempMaterials.category.name} </td>
                            <td> 
                                <a href="${tempLink}">Update</a> 
                                | 
                                <a href="${deleteLink}"
                                   onclick="if (!(confirm('Bạn có muốn xóa sách này không?')))
                                               return false">
                                    Delete</a>	
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div>
                    <a class="button right" href="MaterialsControllerServlet?command=NEW">Thêm Vật Tư</a>
                </div>
            </div>
        </div>
    </body>
</html>








