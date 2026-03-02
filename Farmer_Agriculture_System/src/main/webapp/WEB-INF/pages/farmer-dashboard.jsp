<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Dashboard</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f1f8e9;
    }

    .dashboard {
        padding: 40px;
        text-align: center;
    }

    .dashboard h2 {
        color: #2e7d32;
        margin-bottom: 30px;
    }

    .cards {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 25px;
        max-width: 900px;
        margin: auto;
    }

    .card {
        background: white;
        padding: 30px 20px;
        border-radius: 14px;
        box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-6px);
        box-shadow: 0 15px 30px rgba(0,0,0,0.25);
    }

    .card a {
        text-decoration: none;
        color: #2e7d32;
        font-size: 18px;
        font-weight: bold;
        display: block;
    }

    .card span {
        display: block;
        font-size: 40px;
        margin-bottom: 12px;
    }

    .logout {
        margin-top: 40px;
    }

    .logout a {
        text-decoration: none;
        padding: 12px 30px;
        background: #c62828;
        color: white;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    .logout a:hover {
        background: #b71c1c;
        box-shadow: 0 6px 14px rgba(0,0,0,0.3);
    }
</style>
</head>

<body>

<!-- NAVBAR -->
<jsp:include page="navbar.jsp" />

<div class="dashboard">
    <h2>🌾 Farmer Dashboard</h2>

    <div class="cards">

        <div class="card">
            <span>🚜</span>
            <a href="${pageContext.request.contextPath}/farm">My Farms</a>
        </div>

        <div class="card">
            <span>🌱</span>
            <a href="${pageContext.request.contextPath}/field">Fields</a>
        </div>

        <div class="card">
            <span>🌾</span>
            <a href="${pageContext.request.contextPath}/crop">Crops</a>
        </div>

        <div class="card">
            <span>📝</span>
            <a href="${pageContext.request.contextPath}/task">Tasks</a>
        </div>

    </div>

    <div class="logout">
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>

</body>
</html>
