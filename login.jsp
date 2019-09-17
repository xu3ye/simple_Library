<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
	<div>
		<a href="register.jsp">注册账号？</a>
	</div>
	<div>
		<a href="index.jsp">返回登陆页面</a>
	</div>

	<%
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		if (user == "" || pwd == "") {
			int res = JOptionPane.showConfirmDialog(null, "输入为空，请输入账号密码", "是否继续", JOptionPane.YES_NO_OPTION);
			if (res == JOptionPane.YES_NO_OPTION) {
				response.sendRedirect("index.jsp");
			}else{
				response.sendRedirect("index.jsp");
			}
		} else { 
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection con = java.sql.DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&characterEncoding=utf-8", "root", "");
				Statement statement = con.createStatement();
				String sql = "SELECT * FROM user WHERE user='" + user + "'and pwd='" + pwd + "'";
				ResultSet rs = statement.executeQuery(sql);
				if (rs.next()) {
					response.sendRedirect("main.jsp");
				} else {
					int res = JOptionPane.showConfirmDialog(null, "注册成功，是否继续", "是否继续", JOptionPane.YES_NO_OPTION);
					if(res==JOptionPane.YES_NO_OPTION){
						response.sendRedirect("index.jsp");
					}else{
						return;
					}
					
				}
				rs.close();
				statement.close();
				con.close();
				//	PreparedStatement pstmt = con.prepareStatement("insert into user values(?,?)");
				//	pstmt.setInt(1,namber);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	%>



</body>
</html>