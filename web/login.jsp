<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head>
        <title>SpotyNovi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/stile.css">

        
    </head>
    <body>
        
        <%
            session.setAttribute("userName", null);
            session.setAttribute("userPwd", null );
            session.setAttribute("extraParam", "" );
            String userName = request.getParameter("userName")+"";
            String userPwd  = request.getParameter("userPwd")+"";
            
           

            if(!userPwd.equals("null") && !userName.equals("null"))
            {
                String url = "jdbc:mysql://localhost:8080/spotynovi";
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                Connection DB = DriverManager.getConnection(url,"root" , "vertrigo");
                if(!DB.isClosed())
                {
                    int rowCount = 0;
                    Statement stmt = DB.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * "
                            + "FROM utenti where nickname = '"+userName+"' ");
                    while(rs.next())
                    {
                        
                        String userNameDB =  rs.getString("nickname");
                        String userPwdDB =  rs.getString("password");
                        if(userNameDB.equalsIgnoreCase(userName) && userPwdDB.equals(userPwd))
                        {
                            //Login     
                            session.setAttribute("userName", userNameDB);
                            response.sendRedirect("index.jsp");
                        }
                        else
                        {
                            %>
                            <div id="logMsgBox" >
                                <h1>Credenziali Errate</h1>
                                <a href="login.jsp">Torna alla pagina di login</a>
                            </div>
                            <%
                        }
                        rowCount++;
                        break;
                    }
                    
                    if(rowCount == 0)
                    {
                        if(!userPwd.equals("null") && !userName.equals("null"))
                        {
                            %>
                            <div id="logMsgBox" >
                                <h1>Credenziali Errate</h1>
                                <a href="login.jsp">Torna alla pagina di login</a>
                            </div>
                            <%
                        }
                        else
                        {
                        %>
                        <div id="LoginTab">
                            <div class="TitleTab">
                                <h2>Login</h2>
                            </div>
                            <form method="POST" action="login.jsp">
                                <p>Username:</p>
                                <input type="text" name="userName">
                                <p>Password:</p>
                                <input type="password" name="userPwd">
                                <br><br>
                                <input type="submit" value="Login">
                            </form>
                            <a href="registrazione.jsp">registrazione</a>
                        </div>
                        <%
                        }
                    }
                    
                }

                DB.close();
            }
            else
            {
                %>
                <div id="LoginTab">
                    <div class="TitleTab">
                        <h2>Login</h2>
                    </div>
                    <form method="GET" action="login.jsp">
                        <p>Username:</p>
                        <input type="text" name="userName">
                        <p>Password:</p>
                        <input type="password" name="userPwd">
                        <br><br>
                        <input type="submit" value="Login">
                    </form>

                </div>
                 <a href="registrazione.jsp">registrazione</a>
                <%
            }
        %>
        
        
    </body>
</html>
