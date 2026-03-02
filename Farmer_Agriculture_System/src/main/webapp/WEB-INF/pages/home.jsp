<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Agriculture System</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        background: #f5f5f5;
    }

    /* HERO SECTION WITHOUT OVERLAY */
    .hero {
        height: 90vh;
        background-image: url('https://media.istockphoto.com/id/503160722/photo/farmer-spreads-fertilizers-in-the-field-wheat.jpg?s=612x612&w=0&k=20&c=H616JmwTXkV8LVsiriMyqx2M9W_LUHbMwKiHEsehz-E=');
        background-size: cover;
        background-position: center;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: white;
    }

    .hero h1 {
        font-size: 36px;
        text-shadow: 2px 2px 6px #000; /* improves text visibility */
        margin-bottom: 12px;
    }

    .hero p {
        font-size: 18px;
        text-shadow: 1px 1px 4px #000;
        margin-bottom: 20px;
    }

    .btn {
        display: inline-block;
        padding: 14px 30px;
        margin: 8px;
        background: #2e7d32;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    .btn:hover {
        background: #1b5e20;
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(0,0,0,0.4);
    }
</style>
</head>

<body>

<jsp:include page="navbar.jsp" />

<div class="hero">
    <div>
        <h1>🌾 Farmer Agriculture System</h1>
        <p>Empowering farmers with smart solutions</p>

        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <a class="btn" href="${pageContext.request.contextPath}/login">Login</a>
        <a class="btn" href="${pageContext.request.contextPath}/register">Register</a>
    </div>
</div>

</body>
</html>
