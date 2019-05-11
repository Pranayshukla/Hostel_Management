
<%@page import="chitkara.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        
    </head>
    <body>
        <h2> <%=user.getFirst_name()+" "+user.getLast_name()%> </h2>
        <h2> <%=user.getUid()%> </h2>
        
        
       
        <div>
             <form action="profile.jsp" method="post">
             <div> <button class="btn default">Profile</button></div>
        </div>
        
    </body>
</html>
