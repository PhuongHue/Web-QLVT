<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Thêm Vật Tư</title>

    </head>
    <body>
        <%@ include file = "/header/header.jsp" %>
        <div id="container">
            <h3>Thêm Vật Tư</h3>
            <form action="MaterialsControllerServlet" method="GET">
                <input type="hidden" name="command" value="ADD" />
                <table>
                    <tbody>
                        <tr>
                            <td><label>Tên Vật Tư:</label></td>
                            <td><input type="text" name="name" /></td>
                        </tr>
                        <tr>
                            <td><label>Giá:</label></td>
                            <td><input type="text" name="price" /></td>
                        </tr>
                        <tr>
                            <td><label>Thể loại:</label></td>
                            <td><select name ="categoryName">
                                    <c:forEach var="row" items="${category_List}">  
                                        <option    value='<c:out value="${row.id}" />'>${row.name}</option>
                                    </c:forEach>
                                </select>
                            <td>
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
                <a href="./MaterialsControllerServlet">Quay lại danh sách</a>
            </p>
        </div>
    </body>
    <link type="text/css" rel="stylesheet" href="css/headercss.css">
    <link type="text/css" rel="stylesheet" href="css/addstyle.css">
    <link type="text/css" rel="stylesheet" href="css/add-form.css">
</html>











