<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${person.firstName}${person.lastName}</p>
	<p>${person.email}</p>
	Education
	<br>
	<c:forEach items="${educations}" var="education">

		<c:out value="${education.typeOfDegree}"></c:out>
		<c:out value="${education.institute}"></c:out>
		<c:out value="${education.endDate}"></c:out>
	</c:forEach>

	<form action="EducationServlet" method="post" commandName="educations" >
		<c:forEach items="${educations}" var="education">	
			<input  name = "eduId" value = ${education.educationId}></input>
		</c:forEach>
		<button>Add another education</button>
		<br>
	</form>
	<div>
		<c:if test="${not empty educations}">
			<p>${experience[0].position}</p>
			<p>${experience[0].company},${experience[0].startDate} -
				${experience[0].endDate}</p>
			<p>${experience[0].duty}</p>
		</c:if>
	</div>
	<div>
		Add all your experience
		<form id="experience" name="experience" action="ExperienceServlet"
			method="post">
			Start Date <br> <input type="text" name="startDate"
				id="startDate" /> <br> End Date <br> <input type="text"
				name="endDate" id="endDate" /> <br> Position <br> <input
				type="text" name="position" id="position" /> <br> Company <br>
			<input type="text" name="company" id="company" /> <br> Duty <br>
			<input type="text" name="duty" id="duty" /> <br> <input
				type="submit" value="submit" />
		</form>

	</div>

</body>
</html>