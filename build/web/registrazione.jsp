<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if( !(request.getParameter("nickname")+"").equals("null") && 
            !(request.getParameter("password")+"").equals("null") && 
            !(request.getParameter("nome")+"").equals("null") &&
            !(request.getParameter("mail")+"").equals("null") &&
            !(request.getParameter("cognome")+"").equals("null")
            )
    {
        
        String nickname = request.getParameter("nickname");         
        String password = request.getParameter("password"); 
        String cognome = request.getParameter("cognome");         
        String nome = request.getParameter("nome"); 
        String mail = request.getParameter("mail");
        
      
        
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spotynovi", "root", "vertrigo");
        Statement stmt = conn.createStatement();
        stmt.executeUpdate("INSERT INTO UTENTI VALUES "
                + "(NULL,\""+cognome+"\",\""+mail+"\",\""+nickname+"\",\""+password+"\",\""+nome+"\")");
              
        }
        catch(Exception e)
        {
            %><%= e.getMessage() %><%
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/stile.css">
    </head>
    <body>
        <h3>REGISTRAZIONE</h3>
        <form method="POST" ACTION="registrazione.jsp">
            NOME <input type="text" name="nome"><br>
            CONOME<input type="text" name="cognome"><br>
            MAIL<input type="text" name="mail"><br>
            NICKNAME<input type="text" name="nickname"><br>
            PASSWORD<input type="text" name="password"><br>
            <input type="submit" name="registrazione">
        </form> 
    </body>
</html>
