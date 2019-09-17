<%@page contentType="text/html;charset=gb2312"%>
<%@page language="java" import="java.sql.*,java.io.*"%>
<html>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<body>

	<nav class="navbar bavbar-brand" style="text-align: center;">
		<h3>图书管理系统</h3>
	</nav>
	<div>
		<ul class="nav nav-tabs nav-justified">
			<li><a href="insertBook.jsp">添加图书</a></li>
			<li><a href="updateBook.jsp">修改图书</a></li>
			<li class="active"><a href="queryAdelete.jsp">查询图书</a></li>
			<li><a href="borrow.jsp">借阅图书</a></li>
		</ul>
	</div>
	<center>
		<div>
			<h4>图书信息浏览</h4>
			<hr>
			<table class="table table-striped">
				<tr>
					<th>编号</th>
					<th>书名</th>
					<th>出版社</th>
					<th>作者</th>
					<th>操作</th>
				</tr>
				<%
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "");
					Statement stmt = con.createStatement();
					ResultSet rst = stmt.executeQuery("select * from book;");
					while (rst.next()) {//输出查询结果
						out.println("<tr>");
						out.println("<td>" + rst.getString("bkId") + "</td>");
						String bkId = rst.getString(1);
						out.println("<td>" + rst.getString("bkName") + "</td>");
						out.println("<td>" + rst.getString("bkPublisher") + "</td>");
						out.println("<td>" + rst.getString("bkPrice") + "</td>");
						out.println(
								"<td>" + "<a href='deleteBook.jsp?bkId="+bkId+
								"'><button type='button' class='btn btn-danger'>删除</button></a>"
										+ "</td>");
						out.println("</tr>");
					}
					//关闭连接、释放资源
					rst.close();
					stmt.close();
					con.close();
				%>
			</table>
		</div>
	</center>
</body>
</html>