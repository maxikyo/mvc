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
        <form:errors path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <form:errors path="surname"/>
        <br><br>
        Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>
        Department <form:select path="department">
        <form:options items="${employee.departments}"/>
    </form:select>
        <br><br>
        Which car do you want to have?
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--        &lt;%&ndash;Radio button (hard coded)&ndash;%&gt;--%>
<%--        BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--        Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--        Mercedes<form:radiobutton path="carBrand" value="Mercedes"/>--%>
        <br><br>

        <%--check box hard-coded--%>
        Foreign Language(s)
        <%--Without hard-coded--%>
        <form:checkboxes path="languages" items="${employee.languageList}"/>
        <br><br>
        Phone<form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>

        <%--hard coded--%>
<%--        EN <form:checkbox path="languages" value="English"/>--%>
<%--        FR <form:checkbox path="languages" value="French"/>--%>
<%--        DE <form:checkbox path="languages" value="Deuhtsch"/>--%>

        <br><br>
        <input type="submit" value="OK">
    </form:form>

</body>
</html>