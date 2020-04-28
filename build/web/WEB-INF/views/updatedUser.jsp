<%-- 
    Document   : updatedUser
    Created on : Apr 28, 2020, 8:34:21 PM
    Author     : Odisseas KD
--%>

<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
        <title>Updated User</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-5">Below you will find info on your update attempt</h1>
            <div class="row text-center">

                <%
                    if((User)request.getAttribute("user") != null) {
                        out.println("<h1 class='text-center mt-5 bg-success col-12'>" + "User updated successfully" + "</h1>");
                    } else {
                        out.println("<h1 class='text-center mt-5 bg-danger col-12'>" + "Could not find user to update" + "</h1>");
                    }
                    
                    %>
                </table>
            </div>
        </div>
    </body>
</html>
