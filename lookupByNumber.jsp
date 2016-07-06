<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
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
			
			//////////////////////////////////////////////
			// Display Messages for the user who logged in
			//////////////////////////////////////////////
			      
      Connection con = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      String lookupID = request.getParameter("LookupMemberID");
%>

      <HTML>
      <HEAD>
      <TITLE>Searching for member: lookupID</TITLE>
      </HEAD>
      <BODY BGCOLOR='#B388FF'>
      <H3><u>Searching for Member ID: <%=lookupID%></u></H3>
      <CENTER>
	  
	<%
      try {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM userstable WHERE UserID=" + Integer.parseInt(lookupID));
    %>
         
		 <TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
		<TR BGCOLOR='#D6DFFF'>
		<TD ALIGN='center'><B>Picture</B></TD>
		<TD ALIGN='center'><B>User Name</B></TD>
		<TD ALIGN='center'><B>Gender</B></TD>
		<TD ALIGN='center'><B>City / State</B></TD>
		<TD ALIGN='center'><B>Country</B></TD>
		<TD ALIGN='center'><B>About User</B></TD>
		<TD ALIGN='center'><B>User Profile</B></TD>
		<TD ALIGN='center'><B>Add to Contact List</B></TD>
		</TR>
    
	<%
         int i = 0;
         String formName = "form";
         String buttonName = "button";
         
         while (rs.next()) {
            String picture = rs.getString("FileLocation");
            String user = rs.getString("UserName");
            String city = rs.getString("City");
            String state = rs.getString("State");
            String country = rs.getString("Country");
            String aboutUser = rs.getString("AboutMe1");
            String gender = rs.getString("Gender");
            
            formName += i;
            buttonName += i;
    %>   
            <form name='<%=formName%>' method='post' action='addContact.jsp'>
			<TR>
			<TD><img src='<%=picture%>'</TD>
			<TD><%=user%></TD>
			<TD><%=gender%></TD>
			<TD><%=city%> / <%=state%></TD>
			<TD><%=country%></TD>

			<TD><%=aboutUser%></TD>
			<TD><A href='details.jsp?type=1&data=<%=lookupID%>'><IMG SRC='images/detail.jpg'></A></TD>
			<TD><input type='submit' value='Add to Contact List' name='<%=buttonName%>'></TD>
			<input type='hidden' value='<%=user%>' name='hiddenUser'>
			</TR>
			</form>
            
        <%  
			i++;
         }
		%>
		
        </TABLE>
	<%
      }
      catch (Exception e) {
         out.println("Could not connect to the users database.<P>");
         out.println("The error message was");
         out.println("<PRE>");
         out.println(e.getMessage());
         out.println("</PRE>");
      }
      finally {
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
			out.println("<script language=\"javascript\">");
			out.println("alert(\"You need to log in to use this service!\");");
			out.println("</script>");
			
			out.println("<a href='index.html'>Click Here</a> to go to the main page.<br><br>");
			
			out.println("Or Click on the button to exit<FORM><INPUT onClick=\"javascipt:window.close()\" TYPE=\"BUTTON\" VALUE=\"Close Browser\" TITLE=\"Click here to close window\" NAME=\"CloseWindow\" STYLE=\"font-family:Verdana, Arial, Helvetica; font-size:smaller; font-weight:bold\"></FORM>");
			
			log(e.getMessage());
			return;
		}
%>