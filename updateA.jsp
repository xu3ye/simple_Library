<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("gbk");
	String bkId = request.getParameter("bkId");
	String number = request.getParameter("number");
    String bookname = request.getParameter("bookname");
    String press = request.getParameter("press");
    String price = request.getParameter("price");
    out.println("<script>alert("+number+");</script>");
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = java.sql.DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=UTF-8", "root", "");
		Statement stmt = con.createStatement();
		ResultSet rst = stmt.executeQuery("select * from book;");
	
	if(number==""||number==null){
		
	} else {
			stmt.executeUpdate("update book set bkId='" + number + "',bkName='" + bookname + "',bkPublisher='"
					+ press + "' where bkId='" + bkId + "'");
		}
		response.sendRedirect("updateBook.jsp");

	} catch (Exception e) {
		System.out.println("有异常！");
		e.printStackTrace();
	}
%>
</body>
</html>