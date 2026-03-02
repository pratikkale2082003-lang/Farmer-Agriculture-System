<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crop Management</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f8;
        padding: 30px;
    }

    h2 {
        color: #2e7d32;
        margin-bottom: 15px;
    }

    .container {
        max-width: 720px;
        margin: auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    form {
        margin-bottom: 30px;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }

    input, select {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button {
        margin-top: 15px;
        padding: 10px 20px;
        background: #2e7d32;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background: #1b5e20;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    th {
        background: #2e7d32;
        color: white;
    }

    tr:hover {
        background: #f1f1f1;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Add Crop</h2>

    <form action="/crop/save" method="post">
        <label>Crop Name</label>
        <input type="text" name="cropName" required>

        <label>Field</label>
        <select name="field.fieldId" required>
            <option value="">-- Select Field --</option>
            <c:forEach items="${fieldList}" var="f">
                <option value="${f.fieldId}">${f.name}</option>
            </c:forEach>
        </select>

        <button type="submit">Save</button>
    </form>

    <h2>Crop List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Crop Name</th>
        </tr>

        <c:forEach items="${cropList}" var="c">
            <tr>
                <td>${c.cropId}</td>
                <td>${c.cropName}</td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
