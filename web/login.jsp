<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    if( !(request.getParameter("nickname")+"").equals("") && !(request.getParameter("password")+"").equals("")){
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spotynovi", "root", "vertrigo");
        String nickname = request.getParameter("nickname");         
        String password = request.getParameter("password"); 
        boolean enter = false;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT password FROM utenti WHERE nickname='"+nickname+"' ");
        
        while(rs.next())
        {   
            enter = true;
            String passwordDB = rs.getString("password");
            if(passwordDB.equals(password))
            {
                response.sendRedirect("index.jsp");
                
            }
            else
            {
                %><h1>password errata</h1><%
            }
        }
        if(!enter)
        {
            %><h1>nome utente errato</h1><%
        }
        
    }

%>
<html>
    <head>
        <title>SpotyNovi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/stile.css">
    </head>
    <body>
        <form method="GET" action="login.jsp">
            nickname <input type="text" name="nickname"> 
            <br>
            password <input type="text" name="password">
            <br>
            <input type="submit" name="login">
            
        </form>
        <form method="POST" action="registrazione.jsp">
            <input type="submit">
        </form> 
    </body>
</html>
