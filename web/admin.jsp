<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" type="text/css" href="DbColorsCSS2.css"/>
    </head>
    <body>

        <div class="wrap"> <!--div to hold all other divs -->

            <!--header-->
            <%@ include file="includes/header.jsp" %>

            <!--menu-->
            <%@ include file="includes/menu.jsp" %>

            <div class="main">

                <h1>Admin</h1>

                <p><a href="index.jsp">logout</a></p>
                <p><a href="add">Add A Record</a></p>
                <p><a href="readupdate">Update/Delete</a></p>
            </div>

            <!--footer-->
            <%@ include file="includes/footer.jsp" %>


        </div>    
    </body>
</html>