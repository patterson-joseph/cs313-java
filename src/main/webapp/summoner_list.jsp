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
            <h1>Summoners</h1>
            <c:forEach var="summoner" items="${summoners}">
                <div style="float: left">
                <a href="SummonerDetails?id=${summoner.getID()}">
                    <img src="http://ddragon.leagueoflegends.com/cdn/6.5.1/img/profileicon/${summoner.getProfileIconID()}.png" /><br />
                    ${summoner}
                </a>
                </div>
            </c:forEach>
        </div> 
        <a href="/FirstProject/add_summoner.jsp">Add Summoner</a>
    </body> 
</html>