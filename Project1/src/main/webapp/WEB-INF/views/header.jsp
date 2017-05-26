<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!-- Angular.JS -->
   <%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      
</head>
<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
<ul class="nav navbar-nav">
<url:url value="/home" var="url"></url:url>
   <li> <a href="${url }">Home</a> </li>
   
   <url:url value="/aboutus" var="url"></url:url>
   <li><a href="${url }">About Us</a></li>
   
   <security:authorize access="hasRole('ROLE_ADMIN')">
  <url:url value="/admin/product/productform" var="url"></url:url>
    <li><a href="${url }">Add New Product</a></li>
 </security:authorize>
 
  <url:url value="/all/product/productlist" var="url"></url:url>
  <li><a href="${url }">Browse all products</a></li>
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li>
<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
			
 <c:if test="${pageContext.request.userPrincipal.name!=null }">			
 <li><a href="">Welcome ${pageContext.request.userPrincipal.name }</a></li>
 </c:if>
  <url:url value="/all/registrationform" var="url"></url:url>
  
  <c:if test="${pageContext.request.userPrincipal.name==null }">
 <li><a href="${url }">Register</a></li>
 <url:url value="/login" var="url"></url:url>
  <li><a href="${url }">Sign in</a></li>
  
  
 </c:if>
 
 <c:if  test="${pageContext.request.userPrincipal.name!=null }">
  <li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a>
  </li>
  </c:if>
</ul>



</div>

</nav>

</body>
</html>