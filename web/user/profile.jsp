
<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao"%>
<%@page import="chitkara.dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    
    <jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
   
    <body>
        <h1>Hello ${user.getFirst_name()} </h1>
        <div>
            <form>
                <% ResultSet rs=c1.showProfile(user.getUid());
                if(rs.next()){
                    %>
                    <div><label>Name</label>
                        <input type="text" value="<%=rs.getString("first_name")+ " "+rs.getString("last_name")%>" readonly>
                    </div>
                    <div><label>UID</label>
                        <input type="text" value="<%=rs.getString("uid")%>" readonly>
                    </div>
                        <label>Father's Name</label>
                        <input type="text" value="<%=rs.getString("father_name")%>" readonly>
                    <label>Mobile Number</label>
                        <input type="text" value="<%=rs.getString("mobile_no")%>" readonly>
                    <label>Father's Mob No</label>
                        <input type="text" value="<%=rs.getString("f_mob_no")%>" readonly>
                     
                      
                <% } %>
            </form>
        </div>
        
    </body>
</html>
