<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�޸�ͼ��</title>
</head>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<body>
	<nav class="navbar bavbar-brand" style="text-align:center;"><h3>ͼ�����ϵͳ</h3></nav>
	<div>
		<ul class="nav nav-tabs nav-justified">
			<li><a href="insertBook.jsp">���ͼ��</a></li>
			<li class="active"><a href="updateBook.jsp">�޸�ͼ��</a></li>
			<li><a href="queryAdelete.jsp">��ѯͼ��</a></li>
			<li><a href="borrow.jsp">����ͼ��</a></li>
		</ul>
	</div>
	<center>
		<h4>�޸�ͼ����Ϣ</h4>
		<hr />
		<table class="table table-striped">
			<tr>
				<th>���</th>
				<th>����</th>
				<th>������</th>
				<th>����</th>
				<th>����</th>
			</tr>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = java.sql.DriverManager.getConnection(
							"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf-8", "root", "");
					Statement stmt = con.createStatement();
					ResultSet rst = stmt.executeQuery("select * from book;");
					while (rst.next()) {
						out.println("<tr>");
						int bkId = rst.getInt(1);
						out.println("<td>" + rst.getString("bkId") + "</td>");
						out.println("<td>" + rst.getString("bkName") + "</td>");
						out.println("<td>" + rst.getString("bkPublisher") + "</td>");
						out.println("<td>" + rst.getString("bkPrice") +  "</td>");
						out.println(
								"<td>" + "<a href='update.jsp?bkId="+bkId+
								"'><button type='button' class='btn btn-primary'>�޸�</button></a>"
										+ "</td>");
						out.println("</tr>");
					}
					rst.close();
					stmt.close();
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	</center>
</body>
</html>