<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
        <title>View Posts</title> 
    </head>
    <body>
        <div>
            <h1>Posts</h1>
            <c:forEach var="post" items="${posts}"> 
                ${post}<br /> 
            </c:forEach>
        </div> 
        <a href="/FirstProject/create_post.jsp">Create new post</a>
    </body> 
</html>