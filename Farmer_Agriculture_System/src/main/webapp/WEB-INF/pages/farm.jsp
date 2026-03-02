<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farm Management</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f8;
        padding: 30px;
    }

    h2 {
        color: #33691e;
        margin-bottom: 15px;
    }

    .container {
        max-width: 700px;
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

    input {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button {
        margin-top: 15px;
        padding: 10px 20px;
        background: #33691e;
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
        background: #33691e;
        color: white;
    }

    tr:hover {
        background: #f1f1f1;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Add Farm</h2>

    <form action="/farm/save" method="post">
        <label>Location</label>
        <input type="text" name="location" required>

        <label>Size (Acres)</label>
        <input type="number" step="0.1" name="size" required>

        <button type="submit">Save</button>
    </form>

    <h2>Farm List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Location</th>
            <th>Size (Acres)</th>
        </tr>

        <c:forEach items="${farmList}" var="f">
            <tr>
                <td>${f.farmId}</td>
                <td>${f.location}</td>
                <td>${f.size}</td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
