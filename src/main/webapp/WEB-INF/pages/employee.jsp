<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Employee Page</title>
	<style type="text/css">
		.empTable  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.empTable td{font-family:Arial, sans-serif;font-size:16px;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:#ccc;color:#00FF00;background-color:#FF0000;}
		.empTable th{font-family:Arial, sans-serif;font-size:16px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:#ccc;color:#000000;background-color:#FF4500;}
		.empTable .empTable-4eph{background-color:#C0C0C0}
	</style>
</head>
<body>

	<c:if test="${empty employee.emp_id}">
	<h1>
	<spring:message code="AddEmployee"/>
	</h1>
	</c:if>


<c:url var="addAction" value="/employee/add" ></c:url>

<form:form action="${addAction}" modelAttribute="employee">
<table>
	<c:if test="${not empty employee.emp_id}">
	<h1><spring:message code="EditEmployee"/></h1>
	<tr>
		<td>
			<form:label path="emp_id">
				<spring:message code="emp_id"/>
			</form:label>
		</td>
		<td>
			<form:input path="emp_id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="emp_id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="firstname">
				<spring:message code="firstname"/>
			</form:label>
		</td>
		<td>
			<form:input path="firstname" />
		</td> 
	</tr>
		<tr>
		<td>
			<form:label path="last_name">
				<spring:message code="last_name"/>
			</form:label>
		</td>
		<td>
			<form:input path="last_name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="gender">
				<spring:message code="gender"/>
			</form:label>
		</td>
		<td>
			<form:input path="gender" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="mobile_num">
				<spring:message code="mobile_num"/>
			</form:label>
		</td>
		<td>
			<form:input path="mobile_num" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="email_id">
				<spring:message code="email_id"/>
			</form:label>
		</td>
		<td>
			<form:input path="email_id" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="office_mail">
				<spring:message code="office_mail"/>
			</form:label>
		</td>
		<td>
			<form:input path="office_mail" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="pan_num">
				<spring:message code="pan_num"/>
			</form:label>
		</td>
		<td>
			<form:input path="pan_num" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="aadhaar_num">
				<spring:message code="aadhaar_num"/>
			</form:label>
		</td>
		<td>
			<form:input path="aadhaar_num" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="blood_group">
				<spring:message code="blood_group"/>
			</form:label>
		</td>
		<td>
			<form:input path="blood_group" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="emp_level">
				<spring:message code="emp_level"/>
			</form:label>
		</td>
		<td>
			<form:input path="emp_level" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="post">
				<spring:message code="post"/>
			</form:label>
		</td>
		<td>
			<form:input path="post" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="basic_pay">
				<spring:message code="basic_pay"/>
			</form:label>
		</td>
		<td>
			<form:input path="basic_pay" />
		</td>
	</tr>
	
	<tr>
		<td>
			<form:label path="house_allowance">
				<spring:message code="house_allowance"/>
			</form:label>
		</td>
		<td>
			<form:input path="house_allowance" />
		</td>
	</tr>
	
	<tr>
		<td>
			<form:label path="permanent_address">
				<spring:message code="permanent_address"/>
			</form:label>
		</td>
		<td>
			<form:input path="permanent_address" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="present_address">
				<spring:message code="present_address"/>
			</form:label>
		</td>
		<td>
			<form:input path="present_address" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
				<input type="submit"
					value="<spring:message code="Submit"/>" />
		</td>
	</tr>
</table>	
</form:form>
<br>

<c:if test="${not empty employeeList}">
<h3><spring:message code="employeeList"/></h3>
	<table class="empTable">
	<tr>
		<th width="60">ID</th>
		<th width="120">First Name</th>
		<th width="120">Last Name</th>
		<th width="100">Gender</th>
		<th width="120">Mobile Number</th>
		<th width="120">EmailId</th>
		<th width="120">Office-mailId</th>
		<th width="90">Pan Number</th>
		<th width="90">Aadhaar Number</th>
		<th width="50">Blood Group</th>
		<th width="60">Employee Level</th>
		<th width="90">Post</th>
		<th width="90">BasicPay</th>
		<th width="90">HRA</th>
		<th width="120">Permanent Address</th>
		<th width="120">Present Address</th>
	</tr>
	<c:forEach items="${employeeList}" var="employee">
		<tr>
			<td>${employee.emp_id}</td>
			<td>${employee.firstname}</td>
			<td>${employee.last_name}</td>
			<td>${employee.gender}</td>
			<td>${employee.mobile_num}</td>
			<td>${employee.email_id}</td>
			<td>${employee.office_mail}</td>
			<td>${employee.pan_num}</td>
			<td>${employee.aadhaar_num}</td>
			<td>${employee.blood_group}</td>
			<td>${employee.emp_level}</td>
			<td>${employee.post}</td>
			<td>${employee.basic_pay}</td>
			<td>${employee.house_allowance}</td>
			<td>${employee.permanent_address}</td>
			<td>${employee.present_address}</td>
			<td><a href="<c:url value='/employee/edit/${employee.emp_id}' />" >Edit</a></td>
			<td><a href="<c:url value='employee/remove/${employee.emp_id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>