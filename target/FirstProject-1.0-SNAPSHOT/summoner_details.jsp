<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
        <title>Summoner List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1><c:out value="${summoner}"/></h1>
            <img src="http://ddragon.leagueoflegends.com/cdn/6.5.1/img/profileicon/<c:out value="${summoner.getProfileIconID()}"/>.png" /><br />
            <a href="/FirstProject/add_summoner.jsp" class="btn btn-primary">Add Summoner</a>
            <a href="/FirstProject/SummonerList" class="btn btn-primary">Summoner List</a>
            <h3>League: <c:out value="${summoner.getLeagues().get(0).getTier()}"/></h3>
            <h3>Games</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Game ID</th>
                        <th>Lane</th>
                        <th>Role</th>
                  </tr>
                </thead>
                <tbody>                
                <c:forEach var="game" items="${summoner.getMatchList().subList(0,50)}">
                    <tr>
                        <th scope="row">${game.getID()}</th>
                        <td>${game.getLane()}</td>
                        <td>${game.getRole()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
    </body> 
</html>