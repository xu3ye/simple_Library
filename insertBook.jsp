<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>添加图书信息</title>
<meat charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery.min.js"></script> <script src="js/bootstrap.js"></script>
</head>
<body>

	<nav class="navbar bavbar-brand" style="text-align: center;">
		<h3>图书管理系统</h3>
	</nav>
	<div>
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="insertBook.jsp">添加图书</a></li>
			<li><a href="updateBook.jsp">修改图书</a></li>
			<li><a href="queryAdelete.jsp">查询图书</a></li>
			<li><a href="borrow.jsp">借阅图书</a></li>
		</ul>
	</div>
	<center>
		<h4>添加图书信息</h4>
		<hr>
		<table class="table table-striped">
			<tr>
				<th>编号</th>
				<th>书名</th>
				<th>出版社</th>
				<th>作者</th>
				<th>操作</th>
			</tr>
			<form action="#" method="post">
				<tr>
					<th><input type="text" name="number"></th>
					<th><input type="text" name="bookname"></th>
					<th><input type="text" name="press"></th>
					<th><input type="text" name="price"></th>
					<th><input type="submit" value="添加" class="btn btn-info"></th>
				</tr>
			</form>
			<%
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String number = request.getParameter("number");
				String bookname = request.getParameter("bookname");
				String press = request.getParameter("press");
				String price = request.getParameter("price");

				if (number == "" || bookname == "" || press == "" || price == ""||number == null || bookname == null || press == null || price == null) {
					return;
				} else {

					try {//装载驱动程序
						Class.forName("com.mysql.jdbc.Driver").newInstance();
						//创建连接
						Connection con = java.sql.DriverManager.getConnection(
								"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=UTF-8", "root", "");
						//===使用PreparedStatement添加数据===//
						PreparedStatement pstmt = con.prepareStatement("insert into book values(?,?,?,?)");
						pstmt.setString(1, number);
						pstmt.setString(2, bookname);
						pstmt.setString(3, press);
						pstmt.setString(4, price);
						//执行插入数据操作
						pstmt.execute();

						//===使用Statement添加数据===//
						Statement stmt = con.createStatement();
						//一次添加一行数据
						out.println("<tr><b>添加图书数据成功，请浏览：<br></tr>");
						//显示添加后的全部图书信息
						ResultSet rst = stmt.executeQuery("select * from book;");
						while (rst.next()) {
							out.println("<tr>");
							out.println("<td>" + rst.getString("bkId") + "</td>");
							out.println("<td>" + rst.getString("bkName") + "</td>");
							out.println("<td>" + rst.getString("bkPublisher") + "</td>");
							out.println("<td>" + rst.getString("bkPrice") + "</td>");
							out.println("</tr>");
						}
						//关闭连接、释放资源
						rst.close();
						stmt.close();
						con.close();
						pstmt.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			%>
		</table>
</body>
</html>