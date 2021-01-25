<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    /*If user tries to click on browser back button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!--
	TODO: 4.13. Check if user is logged in or not. If not then redirect user to the default page i.e index.jsp.
	(Hint: You need to handle NullPointerException.)
	(Hint: Make use of the email id stored in the session object to check if user is logged in or not.)
-->

<!--
	TODO: 4.14. Design the "Home" page with the following properties.
	    1. Title of the page should be "Home Page"
	    2. If a user is logged in then display the string before @ in the user email id on the web page.
	        For example, if email id is example@gmail.com, then display "Logged In as example" in the
	        top left corner of the web page as shown on the learn platform.
	    3. Provide five hyperlinks to the Create.jsp page, Search.jsp page, Delete.jsp page, Filter.jsp page
	        and Logout.jsp page. They should be provided in the same order as shown on the learn platform with
	        some spacing between them.
-->
<html>
	<head>
		<title>Home</title>
	</head>
	<body>
		<p> Logged in as <%=request.getParameter("useremail").substring(0,request.getParameter("useremail").indexOf("@"))%></p>
		<a href="/ublog/Create.jsp">Create</a>
		<a href="/ublog/Search.jsp">Search</a>
		<a href="/ublog/Delete.jsp">Delete</a>
		<a href="/ublog/Filter.jsp">Filter</a>
		<a href="/ublog/Logout.jsp">Logout</a>
	</body>
</html>
<%
	try {
		Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
		if (!isLoggedIn) {
			response.sendRedirect("/index.jsp");
		}
	} catch (Exception ex) {
		response.sendRedirect("/index.jsp");
	}
%>
