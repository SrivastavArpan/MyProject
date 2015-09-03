<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<style>
table, th , td {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f2f2f2;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
#myDIV {
    width: 500px;
    height: 500px;
    border: 15px solid coral;
    -webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
    animation: mymove 5s infinite;
    margin-left: 10%;
    margin-top: 6%;
}

</style>
<script src="/js/bootstrap.js" type="text/javascript"></script>
<link href="<c:url value="/resources/css/newMobileResponsive.css" />" rel="stylesheet" type="text/css" />
</head>
 <body>

<nav class="menu-opener">
    <div class="menu-opener-inner"></div>
  </nav>
  <nav class="menu">
    <ul class="menu-inner">
      <a href="<c:url value="result"/>" class="menu-link">
        <li>Home</li>
      </a>
      <a href="<c:url value="portFolio"/>" class="menu-link">
        <li>Contact Us</li>
      </a>
      <a href="<c:url value="portFolio" />" class="menu-link">
        <li>About Us</li>
      </a>
      <a href="" class="menu-link">
        <li>Click Here</li>
      </a>
      <a href="" class="menu-link">
        <li>Your Choice</li>
      </a>
    </ul>
  </nav>
  
  <form:form method="POST" modelAttribute="userbean">
   <div id="myDIV">
  <table style="border-style: solid;
    border-color: #ff0000 #0000ff;">
   <div>
    <label class="desc" id="title1" for="Field1">Full Name</label>
    <div>
      <input id="Field1" name="Field1" type="text" class="field text fn" value="" size="8" tabindex="1">
    </div>
  </div>
    
  <div>
    <label class="desc" id="title3" for="Field3">
      Email
    </label>
    <div>
      <input id="Field3" name="Field3" type="email" spellcheck="false" value="" maxlength="255" tabindex="3"> 
   </div>
  </div>
  <div>
    <label class="desc" id="title4" for="Field4">
      Message
    </label>
  
    <div>
      <textarea id="Field4" name="Field4" spellcheck="true" rows="10" cols="50" tabindex="4"></textarea>
    </div>
  </div>
    
  <div>
    <fieldset>
    
      <legend id="title5" class="desc">
        Select a Choice
      </legend>
      
      <div>
      	<input id="radioDefault_5" name="Field5" type="hidden" value="">
      	<div>
      		<input id="Field5_0" name="Field5" type="radio" value="First Choice" tabindex="5" checked="checked">
      		<label class="choice" for="Field5_0">First Choice</label>
      	</div>
        <div>
        	<input id="Field5_1" name="Field5" type="radio" value="Second Choice" tabindex="6">
        	<label class="choice" for="Field5_1">Second Choice</label>
        </div>
        <div>
        	<input id="Field5_2" name="Field5" type="radio" value="Third Choice" tabindex="7">
        	<label class="choice" for="Field5_2">Third Choice</label>
        </div>
      </div>
    </fieldset>
  </div>
  
  
  <div>
		<div>
  		<input id="saveForm" name="saveForm" type="submit" value="Submit">
    </div>
	</div>
	</div>
   </table>
  </form:form>
  
   </body>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script>
  $(".menu-opener").click(function(){
	  $(".menu-opener, .menu-opener-inner, .menu").toggleClass("active");
	});
</script>
 
</html>
