<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--second view--%>

<!doctype html>
<html lang="en">

<body>
<h2>Dear Employee, you are WELCOME!!!</h2>

<br><br>

<%--Your name: ${param.employeeName}--%>
<%--here is working method SET--%>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
<%--    Временная переменная --%>
    <c:forEach var="lang" items="${employee.languages}">

        <li>${lang}</li>

    </c:forEach>
</ul>


</form>
</body>
</html>