<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
        <title>Summoner List</title> 
    </head>
    <body>
        <div>
            <h1><c:out value="${summoner}"/></h1>
            <img src="http://ddragon.leagueoflegends.com/cdn/6.5.1/img/profileicon/<c:out value="${summoner.getProfileIconID()}"/>.png" /><br />
            <h3>League: <c:out value="${summoner.getLeagues().get(0).getTier()}"/></h3>
            <h3>Games</h3>
            <div>
                <c:forEach var="game" items="${summoner.getMatchList()}">
                    <hr>
                    <div>Game ID: ${game.getID()}</div>
                    <div>Lane: ${game.getLane()}</div>
                    <div>Role: ${game.getRole()}</div>
                </c:forEach>
            </div>
        </div> 
        <a href="/FirstProject/add_summoner.jsp">Add Summoner</a>
    </body> 
</html>