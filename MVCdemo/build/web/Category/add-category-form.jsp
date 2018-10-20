

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Thêm loại vật tư</title>
        <link type="text/css" rel="stylesheet" href="css/headercss.css">
        <link type="text/css" rel="stylesheet" href="css/addstyle.css">
        <link type="text/css" rel="stylesheet" href="css/add-category-formcss.css">
    </head>

    <body>
        <%@ include file = "/header/header.jsp" %>
        <div id="container">
            <h3>Thêm loại vật tư</h3>
            <form action="CategoryControllerServlet" method="GET">
                <input type="hidden" name="command" value="ADD" />
                <div id="add-category">
                    <div>
                        <label for="name">Tên loại vật tư:</label>
                        <input type="text" name="name" />
                    </div>
                    <div>
                        <input class="button" type="submit" value="SAVE"/>
                    </div>
                    
                </div>
            </form>
            <div style="clear: both;"></div>
            <p>
                <a href="CategoryControllerServlet"> <div class="button right">Quay lại danh sách</div></a>
            </p>
        </div>
       <%@include file="/footer/footer.jsp" %>
    </body>

</html>











