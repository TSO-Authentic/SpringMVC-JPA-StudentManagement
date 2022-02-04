<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>(BUD002-01)Student Update</title>
<jsp:include page="style.jsp" />
<script type="text/javascript">
	function deleteBudget() {
		var isOk = confirm("Are you sure to delete?");
		if (isOk) {
			window.location.replace('/SpringMVC-JPA-StudentManagement/studentsearch/')
		}
	}

</script>
</head>
<body class="main_body">

	<jsp:include page="header.jsp" />

	<div id="container">
		<div id="left_menu">
			<!-- menu html code exist the menu function of general.js -->
			<jsp:include page="left-menu.jsp" />
		</div>
		<form:form action="/SpringMVC-JPA-StudentManagement/studentUpdate/"
			method="post" modelAttribute="stuBean">
			<div id="main_contents">
				<div id="contents">
					<div class="search_form">
						<h3>Student Update</h3>
						<label style="color: blue;">${Success}</label>
						<label id="errormsg">${ Error } <form:errors
								path="*" /></label><br /> <br /> <br />
						<table class="tableForm">
							<tr>
								<td class="tblSingleLabel">Student No *</td>
								<td class="tblSingleInput"><form:input type="text"
										class="txtlong" path="id" readonly="true"/></td>
							</tr>
							<tr>
								<td class="tblSingleLabel">Student Name *</td>
								<td class="tblSingleInput"><form:input type="text"
										class="txtlong" path="name" /></td>
							</tr>
							<tr>
								<td class="tblSingleLabel">Class Name *</td>
								<td class="tblSingleInput"><form:select id="expenseType"
										class="normal_sel" path="className">
										<c:forEach items="${ cList }" var="data">

											<form:option value="${data.name }" />

										</c:forEach>
									</form:select><br /></td>
							</tr>
							<tr>
								<td class="tblSingleLabel">Registered Date *</td>
								<td class="tblSingleInput"><form:select id="expenseType"
										class="short_sel" path="year">
										<option>Year</option>
										<c:forEach var="i" begin="2022" end="2092">
											<c:choose>
												<c:when
													test="${upRemain.year != 'Year' && upRemain.year  == i }">
													<form:option selected="true" value="${i}">${i}</form:option>
												</c:when>
												<c:otherwise>
													<form:option value="${i}">${ i }</form:option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</form:select> 
								
									<form:select id="expenseType" class="short_sel" path="month">
								
										<option>Month</option>
										<c:forEach var="i" begin="1" end="12">
											<c:choose>
												<c:when
													test="${upRemain.month!= 'Month' && upRemain.month== i }">
													<form:option selected="true" value="${i }">${i}</form:option>
												</c:when>
												<c:otherwise>
													<form:option value="${i}">${ i }</form:option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</form:select>
								
									 <form:select id="expenseType" class="short_sel" path="day">
										<option>Day</option>
										<c:forEach var="i" begin="1" end="31">
											<c:choose>
												<c:when
													test="${upRemain.day != 'Day' && upRemain.day  == i }">
													<form:option selected="true" value="${i}">${i}</form:option>
												</c:when>
												<c:otherwise>
													<form:option value="${i}">${ i }</form:option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</form:select><br /> <label id="errormsg"> ${ErrorDate}</label></td>
							</tr>
							<tr>
								<td class="tblSingleLabel">Status *</td>
								<td class="tblSingleInput"><form:select id="expenseType"
										class="normal_sel" path="status">
										<form:option value="Attending"/>
										<form:option value="Passed"/>
										<form:option value="Failed"/>
									</form:select></td>
							</tr>


						</table>
						<br />
						<div id="btnGroup">
							<input type="submit" value="Update" class="button"
								onclick="javascript:update()" /> <a href="/SpringMVC-JPA-StudentManagement/studentDelete/${upRemain.id}"><input type="button"
								value="Delete" id="delete" class="button"
								onclick="javascript:deleteBudget()" /></a> <input type="button"
								value="Back" class="button"
								onclick="window.location.replace('/SpringMVC-JPA-StudentManagement/setupStudentSearch/')" />
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>

	<div class="footer">
		<span>Copyright &#169; ACE Inspiration 2016</span>
	</div>
</body>
</html>