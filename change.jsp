x<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.yusuf.StringUtil" %>


<%!
	String PREFIX = "session.login";
	String ACCOUNT = PREFIX + ".account";
%>

<%
	Connection con = null;
      		Statement stmt = null;
      		ResultSet rs = null;
try
		{

		//session.removeValue(ACCOUNT);
	
			
			String pswd = "";
			String oldPassword = "";
			String newPassword1 = "";
			String newPassword2 = "";
			
			Object accountObject = session.getValue(ACCOUNT);
			
			// If no account object was put in the session, or
			// if one exists but it is not a hashtable, then
			// redirect the user to the original login page
			
			if (accountObject == null)
				throw new RuntimeException("You need to log in to use this service!");
				
			if (!(accountObject instanceof Hashtable))
				throw new RuntimeException("You need to log in to use this service!");
				
			Hashtable account = (Hashtable) accountObject;
			
			String userName = (String) account.get("name");
			
			oldPassword=StringUtil.fixSqlFieldValue(request.getParameter("oldpass"));
			newPassword1=StringUtil.fixSqlFieldValue(request.getParameter("newpass1"));
			newPassword2=StringUtil.fixSqlFieldValue(request.getParameter("newpass2"));
			
			
			out.println(newPassword1);
			
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
			stmt = con.createStatement();
         
			rs = stmt.executeQuery("SELECT UserPassword FROM userstable WHERE UserName='" + userName + "'");
			
			while (rs.next())
			{
				
				pswd = rs.getString("UserPassword");
				%>
				
				sddsd <%=pswd%>
				<%
			}
         
			if (oldPassword == null)
					throw new RuntimeException("Old password NOT specified");
					
				if (newPassword1 == null)
					throw new RuntimeException("New password NOT specified");
					
				if (newPassword1 == null)
					throw new RuntimeException("New password MUST be entered twice");

				oldPassword = oldPassword.trim();
					
				if (oldPassword.equals(""))
					throw new RuntimeException("Old password CANNOT be blank");
						
				newPassword1 = newPassword1.trim();
					
				if (newPassword1.equals(""))
					throw new RuntimeException("New Password cannot be blank");
					
				newPassword2 = newPassword2.trim();
					
				if (newPassword2.equals(""))
					throw new RuntimeException("New password MUST be entered twice and cannot be blank");
					
				if (! newPassword1.equals(newPassword2))
					throw new RuntimeException("Passwords entered do NOT match");
				 
				 if (! pswd.equals(oldPassword))
					throw new RuntimeException("Password incorrect - couldnt login to make changes - try again");
					
				stmt.executeUpdate("UPDATE userstable SET UserPassword='" + newPassword1 + "' WHERE UserName='" + userName + "'");
				
				response.sendRedirect("index.html");
			
		}catch (RuntimeException e)
		{
			e.getMessage();
		}
		finally
			  {
				 if (rs != null) {
					try { rs.close(); }
					catch (SQLException ignore) {}
				 }
				 if (stmt != null) {
					try { stmt.close(); }
					catch (SQLException ignore) {}
				 }
				 if (con != null) {
					try { con.close(); }
					catch (SQLException ignore) {}
				 }
			  }
%>
			
