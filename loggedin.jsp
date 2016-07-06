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
			
			
			
%>

	<!DOCTYPE html>
	<html lang="en">
	<head>
		  <title>User Messages for <%=userName%></title>
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		  		    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

		 <link href="css/login.css" rel="stylesheet" type="text/css" media="">
		

		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
		  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		  
		  <script type="text/javascript">
			function ajaxUserNumber(number)   //functionName could be anything
			{
				
				alert(number);
				//1. Create XmlHttpRequest Object
				//This could be written into an external .js file that could be used within other pages as well.
				var xmlHttp;
			   
				try     // Firefox, Opera 8.0+, Safari
				{
					xmlHttp=new XMLHttpRequest();
				}
				catch (e)
				{
					try  // Internet Explorer
					{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					}
					catch (e)
					{
						try
						{
							xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
						}
						catch (e)
						{
							alert("Your browser does not support AJAX!");
							return false;
						}
					}
				}
				
				//2. Call the server-side script
				//number is the function parameter passed when the JS function is called
				xmlHttp.open("GET", "lookupByNumber.jsp?LookupMemberID=" + number, true);   //q is the name of the parameter to be used in JSP
				xmlHttp.send();   //leave blank, or pass null. Not used with GET requests

				
				//3. Check the server-data is ready
				xmlHttp.onreadystatechange=function()
				{
					if(xmlHttp.readyState==4)
					{
						//4. Manipulate the DOM
						var memInput = document.getElementById("memberNumber");
						var serverData = xmlHttp.responseText;
						alert(serverData);
						memInput.innerHTML = serverData;
					}
				}

			}
			
			function ajaxUserName(name)   //functionName could be anything
			{
				
				
				//1. Create XmlHttpRequest Object
				//This could be written into an external .js file that could be used within other pages as well.
				var xmlHttp;
				var y = name;
			   
				try     // Firefox, Opera 8.0+, Safari
				{
					xmlHttp=new XMLHttpRequest();
				}
				catch (e)
				{
					try  // Internet Explorer
					{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					}
					catch (e)
					{
						try
						{
							xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
						}
						catch (e)
						{
							alert("Your browser does not support AJAX!");
							return false;
						}
					}
				}
				
				//2. Call the server-side script
				//number is the function parameter passed when the JS function is called
				xmlHttp.open("GET", "lookupByName_1.jsp?LookupMemberName1=" + name, true);   //q is the name of the parameter to be used in JSP
				xmlHttp.send();   //leave blank, or pass null. Not used with GET requests

				
				//3. Check the server-data is ready
				xmlHttp.onreadystatechange=function()
				{
					if(xmlHttp.readyState==4)
					{
						//4. Manipulate the DOM
						var memInput = document.getElementById("lookupMemberName");
						var serverData = xmlHttp.responseText;
						//alert(serverData);
					//	memInput.innerHTML=serverData;
						    
						 var x = serverData.trim(); 
					/*	x.replace("\"","");
						x.replace("'","\"");
						var y = [];
						y.push(x)*/
						
						
						   /* $( "#lookupMemberName" ).autocomplete({
								source: x
							});*/
						
						
						
						
						
					}
				}

			}
			
		</script>
	</head>
	
	<BODY BGCOLOR='#CCFF90'>
		<nav class="navbar ">
		  <div class="container-fluid">

			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Welcome <%=userName%></a>
			</div>
			<div class="collapse navbar-collapse">
			  <ul class="nav nav-tabs">
						<li class="active" role="presentation"><a href="#">Home</a></li>
						<li role="presentation" class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" 
							href="#" role="button" aria-haspopup="true" 
							aria-expanded="false">My Account</a>
							
							<ul class="dropdown-menu">
								<li><a href="details.jsp?type=2&data=<%=userName%>">View Details</a></li>
								<li><a href="update.jsp">Update My Info</a></li>
							</ul>
			  
			
						</li>
						
						<li role="presentation"><a href="#" data-toggle="modal" 
						data-target="#contactModal">My Contacts</a></li> 
						<li role="presentation"><a href="#">About Us</a></li> 
						<li class="dropdown nav navbar-nav navbar-right logout">
							
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
								role="button" aria-haspopup="true" aria-expanded="false">
								<span class="glyphicon glyphicon-cog"></span></a>
									<ul class="dropdown-menu">
									<li><a href="greatEssays.html"><span class="glyphicon glyphicon-question-sign"> Help</span></a></li>
									<li><a data-toggle="modal" data-target="#logoutModal"><span class="glyphicon glyphicon-pencil"> UpdatePassword</span></a></li>
									<li><a href="logout.jsp" ><span class="glyphicon glyphicon-off"> LogOut!</span></a></li>
									</ul>
						</li>

			  </ul>
			  
			</div>
		</div>
	</nav>
	<%
			Connection con = null;
			Connection con1 = null;
			Statement stmt = null;
			Statement stmt1 = null;
			ResultSet rs = null;
			
			ResultSet rs1 = null;
			
      try {
		       
         Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
			
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM messages WHERE userName='" + userName + "' ORDER BY messageID");
		 
		 con1 = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
		 stmt1=con1.createStatement();
		 rs1=stmt.executeQuery("SELECT contactID,contactName,dateAdded FROM contacts");
		 
    %>
    
	<!-- Logout Modal-->
	
	<div id="logoutModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

		<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Update Password</h4>
				</div>
				<form class="form-horizontal" method="POST" class="col-md-4" action="change.jsp">
				<div class="modal-body">
					
					
					
						<label for="oldpass" class="control-label">Old password: </label>
						<input type='password' name='oldpass' value='' class="form-control">
						<br>

					
						<label for="newpass1" class="control-label">New password: </label>
						<input type='password' name='newpass1' value='' class="form-control">
					
						<br>
					
						<label for="newpass2" class="control-label">Re-type password: </label>
						<input type='password' name='newpass2' value='' class="form-control">
					
						
					
					
						
					
				</div>
				<div class="modal-footer">
					<button type='submit' value='Change Password' class="btn btn-success chngPass">Change Password</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				</form>	
				
			</div>

		</div>
	</div>
	
	<!-- End of Logout Modal-->
	
	<!-- Contacts Modal-->
	
	<div id="contactModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

		<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					
				</div>
				<form class="form-horizontal" method="POST" class="col-md-4" action="">
				<div class="modal-body">
					
						<table class="table table-bordered " id="">
							<thead>
							  <tr>
								<th>Contact ID</th>
								<th>Name</th>
								<th>Date Added</th>
								
							  </tr>
							  
							  <%
							  
							  int nRows1 = 0;
								while (rs1.next()) {
									nRows1++;
									String messageID = rs1.getString("contactID");
									String fromUser = rs1.getString("contactName");
									String dateAdd = rs1.getString("dateAdded");
         
							  %>
							  
							</thead>
							
							<tbody>
							
							<tr>
								<td><%=messageID%></td>
								<td><%=fromUser%></td>
								<td><%=dateAdd%></td>
								
							<% } %> 
							</tr>
							
							</tbody>
							
						</table>
							
					
												
					
				</div>
				<div class="modal-footer">
					
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				</form>	
				
			</div>

		</div>
	</div>
	
	<!-- End of Contacts Modal-->
	
	
	
	

	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center messages>
			<form class="form" method="POST" action="delete.jsp" name="deleteMessagesForm">
			<table class="table table-bordered">
			<thead>
			  <tr>
				<th>Message ID</th>
				<th>Sender</th>
				<th>Message</th>
				<th>Date</th>
				<th>Reply</th>
				
			  </tr>
			</thead>
				<%
					con = DriverManager.getConnection("jdbc:mysql://localhost/contacts?user=kareena&password=kapoor");
			
					stmt = con.createStatement();
					rs = stmt.executeQuery("SELECT * FROM messages WHERE userName='" + userName + "' ORDER BY messageID");
					 int nRows = 0;
					 while (rs.next()) {
						nRows++;
						String messageID = rs.getString("messageID");
						String fromUser = rs.getString("fromUser");
						String message = rs.getString("message");
						String messageDate = rs.getString("messageDate");
				%>   
    
				<tbody>
				  <tr>
					<td><b><%=messageID%></b></td>
					<td><b><%=fromUser%></b></td>
					<td><b><%=message%></b></td>
					<td><b><%=messageDate%></b></td>
					<td><a href='message.jsp?toUser=<%=fromUser%>'><IMG SRC='images/reply.jpg'></a></td>
					
				  </tr>
				  
    
  		<%
         }
         
         
         out.println("<TR><STRONG>You have " + nRows + " messages.<STRONG></TR>");
         
         
         
         
         out.println("</TBODY>");
		 out.println("</TABLE>");
		 
         out.println("</FORM>");
		 
		%>
       </div>
	   	   
		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 lookup">
			
			<p class="text-center"> Look up</p>
			<form class="form" method="POST" action="lookupByNumber.jsp" name="lookupByNumberForm">
				<div class="form-group text-center">
						<p>Look up by Member Number</p>
						<label for="LookupMemberID" class="control-label">Member Number</label>
						<div>
							
						  <input type="text" class="form-control glyphicon glyphicon-user" 
						  name="LookupMemberID" id="memberNumber" placeholder="Member Number" 
						  />
						  
						</div>
						
						
				</div>
				
				<div class="form-group text-center">
					<button type="submit" class="btn btn btn-primary">Search<span class="glyphicon glyphicon-search"></span></button>
				</div>
				
				
			</form>
			
			<form class="form" method="POST" action="lookupByName.jsp" name="lookupByNameForm">
			
				<div class="form-group text-center">
						<p>Look up by Username</p>
						<label for="LookupMemberName" class="control-label">User Name</label>
						<div>
							
						  <input type="text" class="form-control" name="LookupMemberName" 
						  id="lookupMemberName" placeholder="User Name" onKeyUp="ajaxUserName(this.value)"/>
						  
						</div>
				</div>
				
				<div class="form-group text-center">
				  <button type="submit" class="btn btn btn-primary">Search<span class="glyphicon glyphicon-search"></span></button>
				</div>
				
			</form>
		

		</div>
			
			
			
		
			
			
			
		
			
			
		
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
		 if (rs1 != null) {
            try { rs1.close(); }
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
	
	  <%
      	
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

	</div>
	
	<div class="navbar navbar-fixed-bottom">
		<div class="container text-center">
			<p> <a href="contactus.html">Contact Us</a> <a href="termsandconditions.html">Terms & Conditions</a>
				<a href="privacypolicy.html">Privacy Policy</a>
			</p>
		</div>
	</div>
	
	</body>
</html>
		