<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="css/bootstrap.css">  
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf-8","root","");
					Statement stmt = con.createStatement();
					String bkId = request.getParameter("bkId");
					out.println("<script>alert("+bkId+");</script>");
					boolean col = stmt.execute("delete from book where bkId ="+bkId);
					if(col){
						out.println("<script>alert('É¾³ýÊ§°Ü');</script>");
					}else{
						
						response.sendRedirect("queryAdelete.jsp");
					}
					stmt.close();
					con.close();
				} catch(Exception e){
					e.printStackTrace();
				}
			%>
		</table>
	</center>
</body>
</html>