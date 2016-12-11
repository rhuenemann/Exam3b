
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Customers</title>
        <link rel="stylesheet" type="text/css" href="DbColorsCSS2.css"/>

    </head>
    <body>


        <div class="wrap"> <!--div to hold all other divs -->

            <!--header-->
            <%@ include file="includes/header.jsp" %>

            <!--menu-->
            <%@ include file="includes/menu.jsp" %>

            <div class="main">

                <h1>Search For...</h1>

                <form name="searchForm" action="searchCustomers" method="get">

                    <input type="text" name="searchVal" value="" />

                    <input type="submit" name="submit" value="Search" />

                </form>

            </div>


            <!--footer-->
            <%@ include file="includes/footer.jsp" %>

        </div> 


    </body>
</html>
