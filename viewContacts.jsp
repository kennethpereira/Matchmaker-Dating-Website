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
			
			//////////////////////////////////////////////
			// Display Messages for the user who logged in
			//////////////////////////////////////////////
%>
	<HTML>
	<HEAD>
		<TITLE>Contacts for <%=userName%></TITLE>
	</HEAD>
	<BODY BGCOLOR='#B9F6CA'>
	<H3>Welcome <%=userName%></H3>
	<CENTER>
<%      
      Connection con = null;
      Statement stmt = null;
      ResultSet rs = null;
      try {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
         
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT contactID,contactName,dateAdded FROM contacts");
		 
%>
	<form name='deleteContactsForm' method='post' action='deleteContact.jsp'>
        <TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
		<TR BGCOLOR='#D6DFFF'>
			<TD ALIGN='center'><B>Contact ID</B></TD>
			<TD ALIGN='center'><B>Contact Name</B></TD>
			<TD ALIGN='center'><B>Date</B></TD>
			
		</TR>
<%
         int nRows = 0;
         while (rs.next()) {
            nRows++;
            String messageID = rs.getString("contactID");
            String fromUser = rs.getString("contactName");
            String message = rs.getString("comments");
            String messageDate = rs.getString("dateAdded");
%>     
			<TR>
            <TD><%=messageID%></TD>
            <TD><%=fromUser%></TD>
            <TD><%=message%></TD>
            <TD><%=messageDate%></TD>
            <TD><input type='checkbox' name='msgList' value='<%=messageID%>'> Delete</TD>
            </TR>
	<%
         }
    %>   
        <TR>
        <TD COLSPAN='6' ALIGN='center'><input type='submit' value='Delete Selected Contacts'></TD>
        </TR>
        </TABLE>
        </FORM>
	<%
      }
      catch (Exception e) {
         out.println
         ("Could not connect to the users database.<P>");
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