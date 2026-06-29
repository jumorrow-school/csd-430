<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--
 Justin Morrow | Date: 06/26/26
 Professor: David Ostrowski
 
 Assignment: CSD Module 4.2
 Evolved Module 2.2 JSP Scriplets assignment to use JavaBeans

 Class Resources referenced:
 FirstBean_01.jsp (Reference JSP scriptlets and bean structures)
 FirstBean_02.jsp (Accessing Java objects from scriptlet expressions)
 SecondBean_01.jsp (JSP output formatting with bean data handling)
 MyFirstBean.java (JavaBean structure for: Serializable, Getters/Setters)
 MySecondBean.java (String based Setters and Getters)

 Online Resources:
 https://www.geeksforgeeks.org/java/object-oriented-programming-oops-concept-in-java/
 https://www.w3schools.com/java/java_oop.asp
-->

<%
    // Created 7 JavaBean objects using scriptlets from Module 2.2 Costa Rica Family Vacation

    coffeeBeans.CostaRicanBean bean1 = new coffeeBeans.CostaRicanBean();
    bean1.setActivity("Jet Ski");
    bean1.setCategory("Water Activity");
    bean1.setDescription("Have fun in the water on a high speed Jet Ski with amazing views of the Jungle");
    bean1.setActivityLevel("Moderate");
    bean1.setAgeRestriction("18+");

    coffeeBeans.CostaRicanBean bean2 = new coffeeBeans.CostaRicanBean();
    bean2.setActivity("Snorkeling");
    bean2.setCategory("Water Activity");
    bean2.setDescription("Enjoy a relaxing Snorkeling experience view local Marine Life with water temperatures above 80F");
    bean2.setActivityLevel("Easy");
    bean2.setAgeRestriction("All Ages");

    coffeeBeans.CostaRicanBean bean3 = new coffeeBeans.CostaRicanBean();
    bean3.setActivity("Zip Lining");
    bean3.setCategory("Adventure");
    bean3.setDescription("See the Jungle from an aeral view. Listen for the Howler Monkeys!");
    bean3.setActivityLevel("Moderate");
    bean3.setAgeRestriction("12+");

    coffeeBeans.CostaRicanBean bean4 = new coffeeBeans.CostaRicanBean();
    bean4.setActivity("ATV Tour");
    bean4.setCategory("Adventure");
    bean4.setDescription("Take your Jungle tour to a thrill-ride adventure as you go off roading. Slow down to see the Sloths");
    bean4.setActivityLevel("Difficult");
    bean4.setAgeRestriction("16+");

    coffeeBeans.CostaRicanBean bean5 = new coffeeBeans.CostaRicanBean();
    bean5.setActivity("Horseback Riding");
    bean5.setCategory("Adventure");
    bean5.setDescription("Slow it down a bit and take an adventours cliff side tour guide led horseback ride overlooking amazing views");
    bean5.setActivityLevel("Easy");
    bean5.setAgeRestriction("12+");

    coffeeBeans.CostaRicanBean bean6 = new coffeeBeans.CostaRicanBean();
    bean6.setActivity("Waterfall Tour");
    bean6.setCategory("Nature");
    bean6.setDescription("Experience the La Fortuna Waterfall tour, take a dip into a hot spring and get a closer tour. Don't touch the Eyelash Pit Viper!");
    bean6.setActivityLevel("Difficult");
    bean6.setAgeRestriction("12+");

    coffeeBeans.CostaRicanBean bean7 = new coffeeBeans.CostaRicanBean();
    bean7.setActivity("Jungle River Boat Tour");
    bean7.setCategory("Nature");
    bean7.setDescription("Take a River Boat Ride down Crocodile infested waters. Keep your arms in the boat at all times!");
    bean7.setActivityLevel("Easy");
    bean7.setAgeRestriction("All Ages");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Our Family Costa Rican Trip in 2023 Highlights</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <body>
        <h1>Fun activities booked at the Hotel Riu in Guanacaste Costa Rica</h1>
        <p>
            A destination of incredible natural beauty where you can enjoy idyllic beaches, flatlands and forests that are reminiscent of the landscapes of the African savannah.
			<br> The locals are very friendly, the food is great, and the nature views are unforgetable.
        </p>

		<!---
		Include other display items such as field and recode descriptions, title, and overall data description.
		--->
        <h2>Field Descriptions</h2>

		<!---
		The data will be grouped into topical categories.
		--->
        <ul>
            <li><strong>Activity</strong> - Activity names for unforgetable experiences</li>
            <li><strong>Category</strong> - Activities listed by categories for finding your next adventure</li>
            <li><strong>Description</strong> - A detailed description to better describe the activity</li>
			<li><strong>Activity Level</strong> - Difficulty level (Easy, Moderate, Difficult)</li>
			<li><strong>Age Restriction</strong> - Minimum recommended age for an activity</li>
        </ul>
		
        <h2>Fun activities to experience while visiting Guanacaste Costa Rica</h2>
		<!---
		Data will have a minimum of 5 records with three fields.
		--->
        <table>
			<tr>
				<th>Activity</th>
				<th>Category</th>
				<th>Description</th>
				<th>Activity Level</th>
				<th>Age Restriction</th>
			</tr>
			<tr>
				<td><%= bean1.getActivity() %></td>
				<td><%= bean1.getCategory() %></td>
				<td><%= bean1.getDescription() %></td>
				<td><%= bean1.getActivityLevel() %></td>
				<td><%= bean1.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean2.getActivity() %></td>
				<td><%= bean2.getCategory() %></td>
				<td><%= bean2.getDescription() %></td>
				<td><%= bean2.getActivityLevel() %></td>
				<td><%= bean2.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean3.getActivity() %></td>
				<td><%= bean3.getCategory() %></td>
				<td><%= bean3.getDescription() %></td>
				<td><%= bean3.getActivityLevel() %></td>
				<td><%= bean3.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean4.getActivity() %></td>
				<td><%= bean4.getCategory() %></td>
				<td><%= bean4.getDescription() %></td>
				<td><%= bean4.getActivityLevel() %></td>
				<td><%= bean4.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean5.getActivity() %></td>
				<td><%= bean5.getCategory() %></td>
				<td><%= bean5.getDescription() %></td>
				<td><%= bean5.getActivityLevel() %></td>
				<td><%= bean5.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean6.getActivity() %></td>
				<td><%= bean6.getCategory() %></td>
				<td><%= bean6.getDescription() %></td>
				<td><%= bean6.getActivityLevel() %></td>
				<td><%= bean6.getAgeRestriction() %></td>
			</tr>
			<tr>
				<td><%= bean7.getActivity() %></td>
				<td><%= bean7.getCategory() %></td>
				<td><%= bean7.getDescription() %></td>
				<td><%= bean7.getActivityLevel() %></td>
				<td><%= bean7.getAgeRestriction() %></td>
			</tr>
        </table>
        <br>
        <h3>Activity Summary</h3>
        <p>Total Activity Records: 7</p>
    </body>
</html>