<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
	<div>
	<div class="row">
	    <div class="col">Id</div>
	    <div class="col">Nom</div>
	    <div class="col">Référence</div>
	    <div class="col">Prix</div>
	    <div class="col">Poids</div>
	    <div class="col">Action</div>
	</div>
	</div>
<c:forEach var = "prod" items= "${ listeP }">
	<div class="row">
		  	<div class="col">
		  		<a href="getProduit/${ prod.getId() }">${ prod.getId() }</a>
		  	</div>
	<div class="col"><c:out value="${ prod.getNom() }"></c:out></div>
		    <div class="col"><c:out value="${ prod.getReference() }"></c:out></div>
		    <div class="col"><c:out value="${ prod.getPrix() }"></c:out></div>
		    <div class="col"><c:out value="${ prod.getPoids() }"></c:out></div>
		    <div class="col">
		    	<a href="deleteProduit/${ prod.getId() }"> <button type="button" class="btn btn-outline-danger">Supprimer</button></a>
		    	<a href="getProduit/${ prod.getId() }"> <button type="button" class="btn btn-outline-danger">Modifier</button></a>
		    </div>	  
	</div>
	</c:forEach>
</body>
</html>