<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register | Farmer Agriculture System</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

        /* BACKGROUND IMAGE */
        background-image: url('https://agronicfood.com/wp-content/uploads/2020/02/0-4.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;

        display: flex;
        justify-content: center;
        align-items: center;
    }

    .register-box {
        background: rgba(255, 255, 255, 0.94);
        padding: 40px;
        width: 380px;
        border-radius: 14px;
        box-shadow: 0 18px 35px rgba(0,0,0,0.35);
        text-align: center;
    }

    .register-box h2 {
        color: #2e7d32;
        margin-bottom: 25px;
    }

    .register-box input,
    .register-box select {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    .register-box input:focus,
    .register-box select:focus {
        border-color: #2e7d32;
        box-shadow: 0 0 6px rgba(46,125,50,0.5);
    }

    .register-box button {
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

    .register-box button:hover {
        background: #1b5e20;
        transform: translateY(-2px);
        box-shadow: 0 6px 14px rgba(0,0,0,0.35);
    }

    .login-link {
        margin-top: 20px;
        display: block;
        text-decoration: none;
        color: #2e7d32;
        font-weight: bold;
    }

    .login-link:hover {
        text-decoration: underline;
        color: #1b5e20;
    }
</style>
</head>

<body>

<div class="register-box">
    <h2>🌾 Register</h2>

    <form action="${pageContext.request.contextPath}/register" method="post">
        <input type="text" name="name" placeholder="Enter Username" required>

        <input type="password" name="password" placeholder="Enter Password" required>

<input type="Number" name="Number" placeholder="Enter Mobile Number" required>

        <select name="role" required>
            <option value="">Select Role</option>
            <option value="farmer">Farmer</option>
            <option value="admin">Admin</option>
        </select>

        <button type="submit">Register</button>
    </form>

    <a class="login-link" href="${pageContext.request.contextPath}/login">
        Back to Login
    </a>
</div>

</body>
</html>
