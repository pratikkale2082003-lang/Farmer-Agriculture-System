<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, sans-serif;
    }

    /* ===== NAVBAR ===== */
    .navbar {
        background: linear-gradient(90deg, #1b5e20, #66bb6a);
        padding: 14px 40px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 6px 18px rgba(0,0,0,0.25);
        position: relative;
    }

    .logo {
        color: #fff;
        font-size: 22px;
        font-weight: 700;
    }

    .nav-links {
        display: flex;
        align-items: center;
    }

    .nav-links a {
        color: white;
        margin-left: 22px;
        text-decoration: none;
        font-weight: 500;
        position: relative;
    }

    .nav-links a:hover {
        color: #e8f5e9;
    }

    .username {
        background: rgba(255,255,255,0.15);
        padding: 6px 14px;
        border-radius: 20px;
        color: #e8f5e9;
        margin-right: 16px;
        font-weight: 600;
        font-size: 14px;
    }

    /* ===== HAMBURGER ===== */
    .hamburger {
        display: none;
        font-size: 26px;
        color: white;
        cursor: pointer;
    }

    /* ===== MOBILE VIEW ===== */
    @media (max-width: 768px) {
        .hamburger {
            display: block;
        }

        .nav-links {
            position: absolute;
            top: 64px;
            right: 0;
            background: #1b5e20;
            flex-direction: column;
            width: 220px;
            padding: 15px;
            display: none;
            box-shadow: 0 8px 18px rgba(0,0,0,0.3);
            border-radius: 0 0 0 12px;
            z-index: 1000;
        }

        .nav-links.active {
            display: flex;
        }

        .nav-links a {
            margin: 12px 0;
        }

        .username {
            margin-bottom: 12px;
        }
    }
</style>
</head>

<body>

<div class="navbar">
    <div class="logo">🌾 Farmer Agriculture System</div>

    <!-- Hamburger Icon -->
    <div class="hamburger" onclick="toggleMenu()">☰</div>

    <div class="nav-links" id="navLinks">

        <!-- NOT LOGGED IN -->
        <c:if test="${empty sessionScope.loggedInUser}">
            <a href="${pageContext.request.contextPath}/">Home</a>
            <a href="${pageContext.request.contextPath}/login">Login</a>
            <a href="${pageContext.request.contextPath}/register">Register</a>
        </c:if>

        <!-- LOGGED IN -->
        <c:if test="${not empty sessionScope.loggedInUser}">
            <span class="username">
                 ${sessionScope.loggedInUser.name}
            </span>

            <c:choose>
                <c:when test="${sessionScope.loggedInUser.role eq 'admin'}">
                
                </c:when>

                <c:when test="${sessionScope.loggedInUser.role eq 'farmer'}">
                    
                </c:when>
            </c:choose>

            <a href="${pageContext.request.contextPath}/logout">Logout</a>
        </c:if>

    </div>
</div>

<script>
    function toggleMenu() {
        document.getElementById("navLinks").classList.toggle("active");
    }
</script>

</body>
</html>
