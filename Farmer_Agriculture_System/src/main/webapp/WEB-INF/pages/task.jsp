<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Management</title>

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
        max-width: 720px;
        margin: auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
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
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    button {
        margin-top: 15px;
        padding: 10px;
        background: #33691e;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
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
</style>
</head>

<body>

<div class="container">

    <h2>Add Task</h2>

    <form action="${pageContext.request.contextPath}/task/save" method="post">

        <label>Task Name</label>
        <input type="text" name="taskName" required>

        <label>Date</label>
        <input type="date" name="date" required>

        <label>Crop</label>
        <select name="crop.cropId" required>
            <option value="">-- Select Crop --</option>
            <c:forEach items="${cropList}" var="c">
                <option value="${c.cropId}">${c.cropName}</option>
            </c:forEach>
        </select>

        <button type="submit">Save</button>
    </form>

    <h2>Task List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Task Name</th>
            <th>Date</th>
            <th>Crop</th>
        </tr>

        <c:forEach items="${taskList}" var="t">
            <tr>
                <td>${t.taskId}</td>
                <td>${t.taskName}</td>
                <td>${t.date}</td>
                <td>${t.crop.cropName}</td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
