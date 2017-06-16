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
	<p>Experience</p>
	<p>${experience["0"].position}</p>
	<p>${experience["0"].company},${experience["0"].startDate} -
		${experience["0"].endDate}</p>
	<p>${experience["0"].duty}</p>
	<form action="education.jsp" method=post>
		<button>Add another experience</button>
		<br>
	</form>
	<div>
		Add all your skills
		<form id="skill" name="skill" action="SkillServlet" method="post">
			skill <br> <input type="text" name="skill" /> <br> how do
			you rate your self in this skill<input type="number" max="10" min="1"
				name="rating" id="rating" /> <br> <input type="submit"
				value="submit" />

		</form>
	</div>
</body>
</html>