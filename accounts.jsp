 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {

		//Get the database connection
		String url = "jdbc:mysql://spring2018dar259.ctoodv13tpas.us-east-1.rds.amazonaws.com:3306/finalProj";	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection(url,"dar259", "chingo12345");

			String username=request.getParameter("username");
			String password=request.getParameter("password");
			

			

			  String query = "INSERT INTO accounts (username,password) " +
                      "VALUES ('"+username+"','"+password+"')";
		
					
			  Statement statement = con.createStatement();
		        statement.executeUpdate(query);
		        statement.close();
			
			
			
			
			

		out.print("account created");
	} catch (Exception ex) {
		out.print(ex);
		out.print("account creation failed");
	}
%>
</body>
</html>