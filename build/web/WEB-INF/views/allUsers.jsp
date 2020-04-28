<%-- 
    Document   : allUsers
    Created on : Apr 28, 2020, 8:13:19 PM
    Author     : Odisseas KD
--%>

<%@page import="java.util.List"%>
<%@page import="entities.User"%>
<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
        <title>List of Users</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-5">Below is a list of the created users!</h1>
            <div class="row">
                <table class="col-12 table-bordered mt-5">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Telephone</th>
                        <th>Email</th>            
                    </tr>
                    <%
                        out.println("<tr>");
                        List<User> listOfUsers = (List<User>)request.getAttribute("list");
                        for (int i = 0; i <listOfUsers.size(); i++) {
                            out.println("<tr>");
                            out.println("<td>" + listOfUsers.get(i).getFirstName() + "</td>");
                            out.println("<td>" + listOfUsers.get(i).getLastName() + "</td>");
                            out.println("<td>" + listOfUsers.get(i).getTel() + "</td>");
                            out.println("<td>" + listOfUsers.get(i).getEmail() + "</td>");
                            out.println("</tr>");
                        }                        
                    %>
                </table>
            </div>
        </div>
    </body>
</html>
