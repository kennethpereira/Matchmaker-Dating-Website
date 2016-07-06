<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
	String PREFIX = "session.login";
	String ACCOUNT = PREFIX + ".account";
%>
	
<%
		try
		{
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
			
			String pswd = "";
			String oldPassword = request.getParameter("oldpass");
			String newPassword1 = request.getParameter("newpass1");
			String newPassword2 = request.getParameter("newpass2");
			
			Connection con = null;
      		Statement stmt = null;
      		ResultSet rs = null;
%>
	<HTML>
    <HEAD>
		<TITLE>Change password for user: <%=userName%></TITLE>
    </HEAD>
    <BODY BGCOLOR='#4FC3F7'>
    <H3>Welcome <%=userName%></H3>
    <CENTER>
      
<%
      try
      {
%>
		<form name='changePasswordForm' method='post'>
		<p><table width=600 bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4'>
		<tr bgcolor='#EFEFCE'>
		   <td colspan='2'><b>Password Change Form</b></td>
		</tr>

		<TR>
		<TD><b>Please Enter your old password: </b></TD>
		<TD><input type='password' name='oldpass' value=''></TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password: </b></TD>
		<TD><input type='password' name='newpass1' value=''></TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password again: </b></TD>
		<TD><input type='password' name='newpass2' value=''></TD>
		</TR>
		 
    <%
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         
         rs = stmt.executeQuery("SELECT UserPassword FROM userstable WHERE UserName='" + userName + "'");
	%>
	
        <TR>
        <TD COLSPAN='6' ALIGN='center'><input type='submit' value='Change Password'></TD>
        </TR>
        </TABLE>
        </FORM>
		 
    <%  
         while (rs.next())
         {
             pswd = rs.getString("UserPassword");
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
%>
        <H2><U>Password changed successfully.</U></H2>
        <H2><a href='loggedin.jsp'>Click Here</a> to go back</H2>
        <BR><BR>
<%
      }
      catch (Exception e)
      {
         out.println("<H2><U>Enter fields to update password.</U></H2>");
         out.println("<PRE>");
         out.println(e.getMessage());
         out.println("</PRE>");
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

	  out.println("</CENTER>");
      out.println("</BODY>");
      out.println("</HTML>");
			
	}
		catch (RuntimeException e)
		{
%>
			<script language="javascript">
				alert("ERROR: <%=e.getMessage()%>");
			</script>

<%
			return;
		}
%>