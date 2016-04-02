<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Summoner</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Add Summoner</h1>
            <form action="/FirstProject/summonercreate" method="post">
                <fieldset class="form-group">
                    <label for="summoner_name">Summoner Name</label>
                    <input type="text" class="form-control" id="summoner_name" name="summoner_name" placeholder="Summoner Name">
                </fieldset>
                <fieldset class="form-group">
                    <label for="server">Server</label>
                    <select class="form-control" id="server" name="server">
                        <option value="NA">North America</option>
                    </select>
                </fieldset>
                <button type="submit" class="btn btn-primary">Add Summoner</button>
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
    </body>
</html>