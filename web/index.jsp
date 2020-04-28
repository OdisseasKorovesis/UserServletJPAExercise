<%-- 
    Document   : index
    Created on : Apr 28, 2020, 7:23:11 PM
    Author     : Odisseas KD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>        
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <title>Action Menu</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-5">Select an action from the options below:</h1>
            <div class="row text-center mt-5">
                <form class="col-12 text-center" name="form" action="index.jsp">
                    <select class="browser-default custom-select text-center col-12" name="actionForm">
                        <option value="selectAll">Select all Users</option>
                        <option value="selectId">Select by Id</option>
                        <option value="update">Update a User</option>
                        <option value="insert">Insert a User</option>
                        <option value="delete">Delete a User</a></option>                    
                    </select>
                    <button type="submit" name="submitBtn" class="btn btn-primary mt-3">Go</button>
                    
                    
                </form>
                <%

                    if (request.getParameter("submitBtn") != null) {
                        request.setAttribute("value", request.getParameter("actionForm"));
                        String path = "UserController";
                        RequestDispatcher rd = request.getRequestDispatcher(path);
                        rd.forward(request, response);
                    }
                %>
            </div>
        </div>

    </body>
</html>
