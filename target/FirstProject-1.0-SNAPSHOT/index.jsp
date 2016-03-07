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
        <title>Sign In</title>
    </head>
    <body>
        <h1>Sign In</h1>
        <form action="/FirstProject/login" method="post">
            <div>
                <label>
                    Username:
                    <input type="text" name="username"/>
                </label>
            </div>
            <div>
                <label>
                    Password:
                    <input type="password" name="password"/>
                </label>
            </div>
            <button type="submit">Sign In</button>
        </form>
    </body>
</html>