
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <div>
            <% if(session.getAttribute("message")!=null){ %>
            <%=session.getAttribute("message") %>
            <% } %>
            
        </div>
    
        <h1>Add Student</h1>
    <div>   
            <form action="addstudent" method="post">
                <div> <label>First Name</label>
                    <input type="text" name="first_name" placeholder="Enter First Name">
                 </div>
                     <div> <label>Last Name</label>
                     <input type="text" name="last_name" placeholder="Enter Last Name">
                 </div>
                     <div> <label>UID</label>
                      <input type="text" name="uid" placeholder="Enter UID">
                     </div>
                <div><button type="submit">ADD</button></div>
               </form>
    </div>

    </body>
</html>
