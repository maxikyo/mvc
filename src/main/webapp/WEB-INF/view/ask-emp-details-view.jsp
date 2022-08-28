<%--first view--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<body>
    <h2>Dear Employee enter your details</h2>

    <br>
    <br>
    <%--here is working method get--%>
    <form:form action = "showDetails" modelAttribute="employee">
        Name <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Salary <form:input path="salary"/>
        <br><br>
        Department <form:select path="department">
        <form:options items="${employee.departments}"/>
    </form:select>
        <br><br>
        Which car do you want to have?

        <%--Radio button--%>
        BMW <form:radiobutton path="carBrand" value="BMW"/>
        Audi <form:radiobutton path="carBrand" value="Audi"/>
        Mercedes<form:radiobutton path="carBrand" value="Mercedes"/>
        <br><br>

        <input type="submit" value="OK">
    </form:form>

</body>
</html>