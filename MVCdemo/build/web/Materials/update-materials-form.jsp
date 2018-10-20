<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Cập Nhật Vật Tư</title>
        <link type="text/css" rel="stylesheet" href="css/headercss.css">
        <link type="text/css" rel="stylesheet" href="css/addstyle.css">
        <link type="text/css" rel="stylesheet" href="css/add-form.css">
    </head>
    <body>
        <%@ include file = "/header/header.jsp" %>
        <div id="container">
            <h3>Cập Nhật Vật Tư</h3>

            <form action="MaterialsControllerServlet" method="GET">

                <input type="hidden" name="command" value="UPDATE" /> 
                <input type="hidden" name="materialsId" value="${the_Materials.id}" />

                <table>
                    <tbody>
                        <tr>
                            <td><label>Tên:</label></td>
                            <td><input type="text" name="name"
                                       value="${the_Materials.name}" /></td>
                        </tr>

                        <tr>
                            <td><label>Giá:</label></td>
                            <td><input type="text" name="price"
                                       value="${the_Materials.price}" /></td>
                        </tr>

                        <tr>
                            <td><label>Thể Loại:</label></td>
                            <td> <select name ="categoryName">
                                    <option value="${the_Materials.category.id}" selected>${the_Materials.category.name}</option>
                                    <c:forEach var="row" items="${category_List}">  
                                        <c:if test="${row.id != the_Materials.category.id}"> 
                                            <option    value='<c:out value="${row.id}" />'>${row.name}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td><label></label></td>
                            <td><input type="submit" value="Save" class="save" /></td>
                        </tr>

                    </tbody>
                </table>
            </form>

            <div style="clear: both;"></div>

            <p>
                <a href="MaterialsControllerServlet">Quay lại danh sách</a>
            </p>
        </div>
    </body>

</html>











