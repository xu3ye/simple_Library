<%@page import="java.util.concurrent.ExecutionException"%>
<%@ page import="java.sql.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = java.sql.DriverManager.getConnection(
							"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf-8", "root", "");
					String bkId = request.getParameter("bkId");
					Statement stmt = con.createStatement();
                    stmt.executeUpdate("update book set borrow='1' where bkId='"+bkId+"'");
                    response.sendRedirect("borrow.jsp");
                    con.close();
                	stmt.close();
				}catch(Exception e){
					System.out.println("出现异常");
				}
	
%>
</body>
</html>