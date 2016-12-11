<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="DbColorsCSS2.css"/>
    </head>
    <body>


        <div class="wrap"> <!--div to hold all other divs -->

            <!--header-->
            <%@ include file="includes/header.jsp" %>

            <!--menu-->
            <%@ include file="includes/menu.jsp" %>

            <div class="main">
                <h1>Add A New Customer</h1>

                <form name="addForm" action="addCustomer" method="get">

                    <table class="add">

                        <tr>                   
                            <td class="right">First Name:</td>
                            <td><input type="text" name="firstName" value=""/></td>
                        </tr>

                        <tr>
                            <td class="right">Last Name:</td>
                            <td><input type="text" name="lastName" value=""/></td>
                        </tr>

                        <tr>
                            <td class="right">Address 1:</td>
                            <td><input type="text" name="addr1" value=""/></td>
                        </tr>

                        <tr>
                            <td class="right">Address 2:</td>
                            <td><input type="text" name="addr2" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td class="right">City:</td>
                            <td><input type="text" name="city" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td class="right">State:</td>
                            <td><input type="text" name="state" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td class="right">Zip Code:</td>
                            <td><input type="text" name="zip" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td class="right">Email Address:</td>
                            <td><input type="text" name="emailAddr" value=""/></td>
                        </tr>

                        <tr>
                            <td><input type="reset" name="reset" value="Clear   "/></td>
                            <td><input type="submit" name="submit" value="Submit"/></td>
                        </tr>

                    </table>
                </form>

            </div>


            <!--footer-->
            <%@ include file="includes/footer.jsp" %>

        </div> 

    </body>
</html>
