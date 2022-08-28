<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<body>
    <h2>Dear Employee enter your details</h2>

    <br>
    <br>

    <form:form action = "showDetails" modelAttribute="employee">
        Name <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Salary <form:input path="salary"/>
        <br><br>
        Department <form:select path="department">
        <form:option value="Information Technology" label="IT"/>
        <form:option value="Human Resorces" label="HR"/>
        <form:option value="Sales" label="Sales"/>
        <br><br>
    </form:select>

        <input type="submit" value="OK">
    </form:form>

</body>
</html>