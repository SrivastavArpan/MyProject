<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>ResultPage</title>
<head>
<meta name="viewport" content="width=device-width">
<!-- <meta name="viewport" content = "width = device-width, initial-scale = 1.0" /> -->
<!-- <style src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.css"></style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script> -->
<!-- CSS Files -->

<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />  
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" /> 
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
<link  href="/css/newMobileResponsive.css" rel="stylesheet" type="text/css">
<script src="/js/bootstrap.js" type="text/javascript"></script>
<link href="<c:url value="/resources/css/newMobileResponsive.css" />" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="green">
<form:form method="POST" modelAttribute="userbean">
<nav class="menu-opener">
    <div class="menu-opener-inner"></div>
  </nav>
  <nav class="menu">
    <ul class="menu-inner">
      <a href="<c:url value="result"/>" class="menu-link">
        <li>Accueil</li>
      </a>
      <a href="#" class="menu-link">
        <li>Portfolio</li>
      </a>
      <a href="#" class="menu-link">
        <li>Themes</li>
      </a>
      <a href="#" class="menu-link">
        <li>Templates</li>
      </a>
      <a href="#" class="menu-link">
        <li>Contact</li>
      </a>
    </ul>
  </nav>
<h2>Submitted Student Information</h2>

   <table>
    <tr>
        <td>Name</td>
        <td></td>
    </tr>
    <tr>
        <td>Age</td>
        <td></td>
    </tr>
    <tr>
        <td>ID</td>
        <td></td>
    </tr>
</table>  
</form:form>
</body>
<script>
  $(".menu-opener").click(function(){
	  $(".menu-opener, .menu-opener-inner, .menu").toggleClass("active");
	});
</script>
</html>