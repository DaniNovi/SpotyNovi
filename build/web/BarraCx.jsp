<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<h1>CANZONI</h1>
 <% String url = "jdbc:mysql://localhost:3306/spotynovi";
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                Connection DB = DriverManager.getConnection(url,"root" , "vertrigo");
                if(!DB.isClosed())
                {
                    Statement stmt = DB.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT canzone.titolo,canzone.album,autore.alias FROM canzone INNER JOIN autore ON canzone.id_autore=autore.ID_autore ");
                    out.print("<table>");
                        out.print("<tr>");
                        out.print("<td>titolo</td>");
                        out.print("<td>album</td>");
                        out.print("<td>alias</td>");
                        out.print("</tr>");
                        
                while(rs.next())
                    {  
                        out.print("<tr>");
                        out.print("<td><a href='testo.jsp'>"+rs.getString("canzone.titolo")+"</a></td>");
                        out.print("<td><a href='testo.jsp'>"+rs.getString("canzone.album")+"</a></td>");
                        out.print("<td><a href='testo.jsp'>"+rs.getString("autore.alias")+"</a></td>");
                         out.print("</tr>");
                       
                       
                    }
                     out.print("</table>");
                }
%>