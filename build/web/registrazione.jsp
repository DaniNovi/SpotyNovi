<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if( request.getParameter("action") != null )
    {
        
        
        
        if(!(request.getParameter("nickname")+"").equals("") && 
            !(request.getParameter("password")+"").equals("") && 
            !(request.getParameter("nome")+"").equals("") &&
            !(request.getParameter("mail")+"").equals("") &&
            !(request.getParameter("cognome")+"").equals(""))
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
                out.println("<h1>Registrazione effettuate</h1>");
                session.setAttribute("userName", nickname);
                response.sendRedirect("index.jsp");
            }
            catch(Exception e)
            {
                %><%= e.getMessage() %><%
            }

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
        <form method="GET" ACTION="registrazione.jsp">
            <input name="action" value="registrazione" type="hidden">
            NOME <input type="text" name="nome"  ><br>
            CONOME<input type="text" name="cognome" ><br>
            MAIL<input type="email" name="mail"  ><br>
            NICKNAME<input type="text" name="nickname" ><br>
            PASSWORD<input type="text" name="password" ><br>
            <br>
            <input type="submit" class="formBtn"  name="registrazione">
            
        </form> 
        
        <a class="Preg" href="login.jsp">
           
            login
        </a>
        
        
    </body>
</html>
