<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
	%> 
	<%
		if (user == null || user=="" || pwd == null || pwd=="") {
			int res = JOptionPane.showConfirmDialog(null, "输入为空,是否继续", "是否继续", JOptionPane.YES_NO_OPTION);
			if(res==JOptionPane.YES_NO_OPTION){
				response.sendRedirect("register.jsp");
			}else{
				return;
			}
			
		} else {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "");
			Statement stmt = con.createStatement();
			String sql = "insert into user values(?,?,null)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pwd);
			ps.executeUpdate(); 
			int res = JOptionPane.showConfirmDialog(null, "注册成功，是否继续", "是否继续", JOptionPane.YES_NO_OPTION);
			if(res==JOptionPane.YES_NO_OPTION){
				response.sendRedirect("index.jsp");
			}else{
				return;
			}

			con.close();
			stmt.close();
			ps.close();
			
		}
	%>
</body>
</html>