<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Justin Morrow | Date: 06/19/26
 Professor: David Ostrowski
 
 Assignment: CSD-430 Module 3.2
 Display the results in a table format from the submitted JobApplicationForm.jsp entry from.

 Class Resources referenced:
 Form_01.jsp, Form_02.jsp, Form_03.jsp, Form_04.jsp
 
 Online Resources:
 https://www.youtube.com/watch?v=KJD3UzwW5eU
 https://www.geeksforgeeks.org/advance-java/jsp-form-processing/
 https://www.w3schools.com/html/html_forms.asp
-->

<!DOCTYPE html>

<!---
Use Scriptlets for holding Java code
--->

<%
	/*
	JSP Scriptlet
	Retrieve values submitted from JobApplicationForm.jsp using the request.getParameter() and the request.getParameterValues().
	*/

	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String emailAddress = request.getParameter("emailAddress");
	String position = request.getParameter("position");
	String employmentType = request.getParameter("employmentType");
	String experience = request.getParameter("experience");
	String[] skills = request.getParameterValues("skills");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSD-430 Module 3.2 - Job application results</title>
    </head>
	
	<body>
		<h1>Your submitted job application results</h1><br/>
		<p>Below are your submitted job application results:</p><br/>
		
		<!---
		Display data in an HTML table format
		--->
		<h2>Your Application Information:</h2>
		<table border="1">
			<tr>
				<th>Category Name</th>
				<th>Your Details</th>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><%= firstName %></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><%= lastName %></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><%= emailAddress %></td>
			</tr>
			<tr>
				<td>Position:</td>
				<td><%= position %></td>
			</tr>
			<tr>
				<td>Employment Type:</td>
				<td><%= employmentType %></td>
			</tr>
			<tr>
				<td>Technical Skills:</td>
				<td>
					<%
						if(skills == null){
					%>
						No Technical Skills Selected
					<%
						}
						else{

							for(String skill : skills){
					%>
						<%= skill %><br />
					<%
							}
						}
					%>
				</td>
			</tr>
			<tr>
				<td>Experience Summary:</td>
				<td><%= experience %></td>
			</tr>
		</table>
		<br/>		
		<p>Your form was submitted successfully. Thank you!</p>
	</body>
</html>
