<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login | Farmer Agriculture System</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

        /* BACKGROUND IMAGE */
        background-image: url('https://t3.ftcdn.net/jpg/02/58/16/36/240_F_258163683_RohGPUAeSSughLlXsw1KdlLNMxrrYIzp.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;

        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-box {
        background: rgba(255, 255, 255, 0.92); /* slight transparency */
        padding: 40px;
        width: 360px;
        border-radius: 14px;
        box-shadow: 0 18px 35px rgba(0,0,0,0.35);
        text-align: center;
    }

    .login-box h2 {
        color: #2e7d32;
        margin-bottom: 25px;
    }

    .login-box input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    .login-box input:focus {
        border-color: #2e7d32;
        box-shadow: 0 0 6px rgba(46,125,50,0.5);
    }

    .login-box button {
        width: 100%;
        padding: 12px;
        margin-top: 15px;
        background: #2e7d32;
        border: none;
        border-radius: 6px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    .login-box button:hover {
        background: #1b5e20;
        transform: translateY(-2px);
        box-shadow: 0 6px 14px rgba(0,0,0,0.35);
    }

    .error {
        color: red;
        margin-top: 12px;
        font-weight: 500;
    }

    .register-link {
        margin-top: 20px;
        display: block;
        text-decoration: none;
        color: #2e7d32;
        font-weight: bold;
    }

    .register-link:hover {
        text-decoration: underline;
        color: #1b5e20;
    }
</style>
</head>

<body>

<div class="login-box">
    <h2>🌾 Login</h2>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <input type="text" name="name" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>

        <button type="submit">Login</button>
    </form>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>

    <a class="register-link" href="${pageContext.request.contextPath}/register">
        New User? Register Here
    </a>
</div>

</body>
</html>
