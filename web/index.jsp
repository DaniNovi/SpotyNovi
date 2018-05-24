<%-- 
    Document   : index
    Created on : 4-apr-2018, 12.50.07
    Author     : quintai
--%>

<%
if(session.getAttribute( "userName" ) == null)
    {
       response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/stile.css">
    </head>
    <body>
        <div id="BarraSx">
            <jsp:include page="BarraSx.jsp" flush="false"/>   
	</div>
        <div id="BarraCx">
            <jsp:include page="BarraCx.jsp" flush="false"/>   
	</div>
        <div id="BarraDx">
            <jsp:include page="BarraDx.jsp" flush="false"/>   
	</div>
        
    </body>
</html>
