<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }
    .dashboard {
        padding: 40px;
    }
    .card-container {
        display: flex;
        gap: 20px;
    }
    .card {
        background: white;
        padding: 25px;
        width: 220px;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        text-align: center;
    }
</style>
</head>

<body>

<jsp:include page="navbar.jsp" />

<div class="dashboard">
    <h2>👑 Admin Dashboard</h2>

    <div class="card-container">
        <div class="card"><a href="/farm">Manage Farms</a></div>
        <div class="card"><a href="/inventory">Manage Inventory</a></div>
        <div class="card"><a href="/sales">Manage Sales</a></div>
    </div>
</div>

</body>
</html>
