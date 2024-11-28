<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        form {
            width: 300px;
            margin: 0 auto;
            border: 1px solid #ddd;
            padding: 50px;
            
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <h1>${employee.id == null ? 'Add Employee' : 'Edit Employee'}</h1>
    <c:choose>
        <c:when test="${employee.id == null}">
            <form action="/employees/add" method="post">
        </c:when>
        <c:otherwise>
            <form action="/employees/edit/${employee.id}" method="post">
        </c:otherwise>
    </c:choose>
        <label>Name:</label>
        <input type="text" name="name" value="${employee.name}" />
        <c:if test="${not empty result.fieldError('name')}">
            <span class="error">${result.fieldError('name').defaultMessage}</span>
        </c:if>
        <br>
        <label>Email:</label>
        <input type="email" name="email" value="${employee.email}" />
        <c:if test="${not empty result.fieldError('email')}">
            <span class="error">${result.fieldError('email').defaultMessage}</span>
        </c:if>
        <br>
        <label>Department:</label>
        <input type="text" name="department" value="${employee.department}" />
        <br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
