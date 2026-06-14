<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
 Justin Morrow | Date: 06/13/26
 Professor: David Ostrowski
 
 Assignment: CSD-430 Module 2.2
 JSP Scriptlets - Create/Display at least 5 records with 3 fields for a Country I visited using Java Code, HTML, CSS

 Class Resources referenced:
 Functions_1.jsp, Functions_2.jsp, and Variables_1.jsp - Variables_5.jsp
 
 Online Resources:
 https://costaricaexperts.com/destinations/guanacaste/
 https://costaricaexperts.com/things-to-do-in-costa-rica/
-->

<!DOCTYPE html>

<!---
Use Scriptlets for holding Java code.
--->
<%
    /*
    JSP Scriptlet
    Defining the variables using Java code and each record containing an activity, category, and description from our trip to Hotel Riu.
    */

    String activity1 = "Jet Ski";
    String category1 = "Water Activity";
    String description1 = "Have fun in the water on a high speed Jet Ski with amazing views of the Jungle";

    String activity2 = "Snorkeling";
    String category2 = "Water Activity";
    String description2 = "Enjoy a relaxing Snorkeling experience view local Marine Life with water temperatures above 80F";

    String activity3 = "Zip Lining";
    String category3 = "Adventure";
    String description3 = "See the Jungle from an aeral view. Listen for the Howler Monkeys!";

    String activity4 = "ATV Tour";
    String category4 = "Adventure";
    String description4 = "Take your Jungle tour to a thrill-ride adventure as you go off roading. Slow down to see the Sloths";

    String activity5 = "Horseback Riding";
    String category5 = "Adventure";
    String description5 = "Slow it down a bit and take an adventours cliff side tour guide led horseback ride overlooking amazing views";
	
	String activity6 = "Waterfall Tour";
    String category6 = "Nature";
    String description6 = "Experience the La Fortuna Waterfall tour, take a dip into a hot spring and get a closer tour. Don't touch the Eyelash Pit Viper!";
	
	String activity7 = "Jungle River Boat Tour";
    String category7 = "Nature";
    String description7 = "Take a River Boat Ride down Crocodile infested waters. Keep your arms in the boat at all times!";
%>

<!---
All HTML tags will be outside of JavaScriptlets.
--->
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
            </tr>
            <tr>
                <td><%= activity1 %></td>
                <td><%= category1 %></td>
                <td><%= description1 %></td>
            </tr>
            <tr>
                <td><%= activity2 %></td>
                <td><%= category2 %></td>
                <td><%= description2 %></td>
            </tr>
            <tr>
                <td><%= activity3 %></td>
                <td><%= category3 %></td>
                <td><%= description3 %></td>
            </tr>
            <tr>
                <td><%= activity4 %></td>
                <td><%= category4 %></td>
                <td><%= description4 %></td>
            </tr>
            <tr>
                <td><%= activity5 %></td>
                <td><%= category5 %></td>
                <td><%= description5 %></td>
            </tr>
			<tr>
                <td><%= activity6 %></td>
                <td><%= category6 %></td>
                <td><%= description6 %></td>
            </tr>		
			<tr>
                <td><%= activity7 %></td>
                <td><%= category7 %></td>
                <td><%= description7 %></td>
            </tr>
        </table>
        <br>
        <h3>Activity Summary</h3>
        <p>Total Activity Records: 7</p>
    </body>
</html>