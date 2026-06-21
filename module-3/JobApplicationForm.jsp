<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Justin Morrow | Date: 06/19/26
 Professor: David Ostrowski
 
 Assignment: CSD-430 Module 3.2
 Create Job Application Form using JSP Scriplets/HTML. Have a minimum of 3 input types and 5 data entry points. Return results in 2nd JSP file.

 Class Resources referenced:
 Form_01.jsp, Form_02.jsp, Form_03.jsp, Form_04.jsp
 
 Online Resources:
 https://www.youtube.com/watch?v=KJD3UzwW5eU
 https://www.geeksforgeeks.org/advance-java/jsp-form-processing/
 https://www.w3schools.com/html/html_forms.asp
-->

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSD-430 Module 3.2 - Job application</title>
    </head>
	
	<body>
		<h1>Job application</h1>
		<p>Complete the form below and the results will be displayed on the JSP results page.</p>
		
		<form action="JobApplicationResults.jsp" method="post">
			<p>
				<label>First Name:</label>
				<input type="text" name="firstName" maxlength="50">
			</p>
			<p>
				<label>Last Name:</label>
				<input type="text" name="lastName" maxlength="50">
			</p>
			<p>
				<label>Email Address:</label>
				<input type="text" name="emailAddress" maxlength="50">
			</p>
			
			<p>
				<strong>Choose a Position:</strong>
				<br/>
				<select name="position">
					<option selected="selected" value="--Choose--">--Choose--</option>
					<option value="Software Developer">Software Developer</option>
					<option value="Web Designer">Web Designer</option>
				</select>
			</p>
			
			<p>
				<br/>
				<strong>Choose an Employment Type:</strong>
				<br/>
				<input type="radio" name="employmentType" value="Full Time" checked="checked">
				<label>Full Time</label><br/>				
				<input type="radio" name="employmentType" value="Part Time">
				<label>Part Time</label><br/>
			</p>
			
			<p>
				<br/>
				<strong>Check all your Skills:</strong>
				<br/>
				<input type="checkbox" name="skills" value="HTML/CSS">
				<label>HTML/CSS</label><br/>
				<input type="checkbox" name="skills" value="Java">
				<label>Java</label><br/>
				<input type="checkbox" name="skills" value="JSP">
				<label>JSP</label><br/>
				<input type="checkbox" name="skills" value="Python">
				<label>Python</label><br/>
				<input type="checkbox" name="skills" value="SQL">
				<label>SQL</label>
			</p>
			
			<p>
				<br/>
				<strong>Paste your resume or type your experience:</strong>
				<br/>
				<textarea name="experience" rows="10" cols="50"></textarea>
			</p>
			
			<p>
				<input type="submit" value="Submit">
			</p>
			
			<p>
				<input type="reset" value="Reset">
			</p>
			
		</form>
	</body>
</html>
