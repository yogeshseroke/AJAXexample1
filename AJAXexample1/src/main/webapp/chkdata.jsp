<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
                   
    String data = request.getParameter("q");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
    Statement st = con.createStatement();
    ResultSet res = st.executeQuery("select * from reg1 where emailid = '"+data+"'");
    if(res.next())
    {
    out.print("emailid already exist"); 
    }
    
  %>
</body>
</html>