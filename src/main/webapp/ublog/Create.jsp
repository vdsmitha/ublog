<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    /*If user tries to click on browser back button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<!--
	TODO: 4.15. Check if user is logged in or not. If not then redirect user to the default page i.e index.jsp.
	(Hint: You need to handle NullPointerException.)
	(Hint: Make use of the email id stored in the session object to check if user is logged in or not.)
-->

<!--
	TODO: 4.16. Design the "Create Post" page with the following properties.
	    1. Title of the page should be "Create Post"
	    2. Provide method and action attributes of the form tag such that when user submit
	        the form, the doPost() method of PostServlet get invoked.
	    3. Provide "User Email:" label along with the prepopulate emailId of user as shown on the learn platform.
	        (Hint: You need to use emailId stored in the session object along with JSP expression tag.)
	    4. Provide "Blog Title:" label along with the text field as shown on the learn platform.
	    5. Also, for the "Blog Title:" text field, provide max length as 200, placeholder as "Title" and
	        make this field required.
	    6. Provide "Blog Tag:" label along with the text field as shown on the learn platform.
        7. Also, for the "Blog Tag:" text field, provide max length as 10, placeholder as "java" and
            make this field required.
	    8. Provide "Blog Description:" label along with the text area as shown on the learn platform.
        9. Also, for the "Blog Description:" text area, provide max length as 1000, placeholder as
            "Post Description", rows as 15, cols as 75, and make this field required.
        10. Use the table tag to align the labels and text fields.
        11. Provide "Post" submit button.
        12. Provide a link to the "Home Page".
-->
<html>
    <head>
        <title>Create post</title>
    </head>
    <body>
        <form method="post" action="/ublog/post">
            <table>
            <tr>
                <td><label>User Email:</label></td>
                <td><input type="email" value="<%=request.getSession().getAttribute("uemail")%>" placeholder="example@email.com"></td>
            </tr>
            <tr>
                <td><label>Blog Title:</label></td>
                <td><input type="text" maxlength="200" placeholder="Title" required name="blogtitle"></td>
            </tr>
            <tr>
                <td><label>Blog tag:</label></td>
                <td><input type="text" maxlength="10" placeholder="java" required/></td>
            </tr>
            <tr>
                <td><label>Blog Description:</label></td>
                <td><textarea type="text" maxlength="1000" placeholder="Post Description" required rows="15" cols="75"></textarea></td>
            </tr>
            </table>
        <input type="submit" value="Post">
        <a href="/Home.jsp">Home</a>
        </form>
    </body>
</html>
<!--
    TODO: 4.17. If the user is logged in then display the string before @ in the user email id
    on this web page. For example, if email id is example@gmail.com, then display "Logged In as example"
    in the top left corner of the web page as shown on the learn platform.
-->
