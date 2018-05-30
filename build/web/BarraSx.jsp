<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<h1>PLAYLIST</h1>
    <% String url = "jdbc:mysql://localhost:8080/spotynovi";
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                Connection DB = DriverManager.getConnection(url,"root" , "vertrigo");
                if(!DB.isClosed())
                {
                    Statement stmt = DB.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT playlist.nome "
                            + "FROM playlist INNER JOIN utenti ON playlist.id_utente=utenti.ID_utente WHERE utenti.nickname ='"+session.getAttribute( "userName" )+"'");
                    %><ul><%
                while(rs.next())
                    {
                        %><li><%
                        String nomeP =  rs.getString("nome");
                        out.print("<a href='index.jsp'>"+nomeP+"</a>");
                        %></li><%
                    }
                    %></ul><%
                }
    %>
        