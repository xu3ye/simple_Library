<%@page contentType="text/html;charset=gb2312"%>
<%@page language="java" import="java.sql.*,java.io.*"%>
<html>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<body>

	<nav class="navbar bavbar-brand" style="text-align: center;">
		<h3>ͼ�����ϵͳ</h3>
	</nav>
	<div>
		<ul class="nav nav-tabs nav-justified">
			<li><a href="insertBook.jsp">���ͼ��</a></li>
			<li><a href="updateBook.jsp">�޸�ͼ��</a></li>
			<li class="active"><a href="queryAdelete.jsp">��ѯͼ��</a></li>
			<li><a href="borrow.jsp">����ͼ��</a></li>
		</ul>
	</div>
	<center>
		<div>
			<h4>ͼ����Ϣ���</h4>
			<hr>
			<table class="table table-striped">
				<tr>
					<th>���</th>
					<th>����</th>
					<th>������</th>
					<th>����</th>
					<th>����</th>
				</tr>
				<%
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "");
					Statement stmt = con.createStatement();
					ResultSet rst = stmt.executeQuery("select * from book;");
					while (rst.next()) {//�����ѯ���
						out.println("<tr>");
						out.println("<td>" + rst.getString("bkId") + "</td>");
						String bkId = rst.getString(1);
						out.println("<td>" + rst.getString("bkName") + "</td>");
						out.println("<td>" + rst.getString("bkPublisher") + "</td>");
						out.println("<td>" + rst.getString("bkPrice") + "</td>");
						out.println(
								"<td>" + "<a href='deleteBook.jsp?bkId="+bkId+
								"'><button type='button' class='btn btn-danger'>ɾ��</button></a>"
										+ "</td>");
						out.println("</tr>");
					}
					//�ر����ӡ��ͷ���Դ
					rst.close();
					stmt.close();
					con.close();
				%>
			</table>
		</div>
	</center>
</body>
</html>