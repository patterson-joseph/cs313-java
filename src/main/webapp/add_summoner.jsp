<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Summoner</title>
    </head>
    <body>
        <h1>Add Summoner</h1>
        <form action="/FirstProject/summonercreate" method="post">
            <div>
                <label>
                    Summoner Name:
                    <input type="text" name="summoner_name"/>
                </label>
            </div>
            <div>
                <label>
                    Server:
                    <select name="server">
                        <option value="NA">North America</option>
                    </select>
                </label>
            </div>
            <button type="submit">Add</button>
        </form>
    </body>
</html>