<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sales Management</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f8;
        padding: 30px;
    }

    h2 {
        color: #1b5e20;
        margin-bottom: 15px;
    }

    .container {
        max-width: 750px;
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
        background: #1b5e20;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background: #2e7d32;
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
        background: #1b5e20;
        color: white;
    }

    tr:hover {
        background: #f1f1f1;
    }
</style>
</head>

<body>

<div class="container">

    <h2>Add Sales</h2>

    <form action="/sales/save" method="post">
        <label>Sold Quantity</label>
        <input type="number" name="soldQuantity" required>

        <label>Sold Date</label>
        <input type="date" name="soldDate" required>

        <label>Product</label>
        <select name="inventory.inventoryId" required>
            <option value="">-- Select Product --</option>
            <c:forEach items="${inventoryList}" var="i">
                <option value="${i.inventoryId}">${i.product}</option>
            </c:forEach>
        </select>

        <button type="submit">Save</button>
    </form>

    <h2>Sales List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Quantity</th>
            <th>Date</th>
        </tr>

        <c:forEach items="${salesList}" var="s">
            <tr>
                <td>${s.salesId}</td>
                <td>${s.soldQuantity}</td>
                <td>${s.soldDate}</td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
