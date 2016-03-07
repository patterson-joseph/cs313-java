<%-- 
    Document   : index
    Created on : Mar 1, 2016, 7:15:55 PM
    Author     : Joseph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter new post</title>
    </head>
    <body>
        <h1>Create a new post</h1>
        <form action="/FirstProject/create" method="post">
            <div>
                <label for="post">Post:</label>
            </div>
            <div>    
                <textarea id="post" name="post"></textarea>
            </div>
            <button type="submit">Create Post</button>
        </form>
        <a href="/FirstProject/read">View Posts</a>
    </body>
</html>
