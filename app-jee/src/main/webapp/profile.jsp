
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>RH-SSO Example App</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
<jsp:useBean id="controller" class="com.github.buuhsmead.openshift.team.jee.keycloak.Controller" scope="request"/>
<c:set var="idToken" value="<%=controller.getIDToken(request)%>"/>
<c:set var="tokenString" value="<%=controller.getTokenString(request)%>"/>
<c:set var="accountUri" value="<%=controller.getAccountUri(request)%>"/>
<c:set var="showToken" value="<%=controller.showToken(request)%>"/>

<div class="wrapper" id="profile">
    <div class="menu">
        <button onclick="location.href = 'profile.jsp'">Profile</button>
        <button onclick="location.href = 'profile.jsp?showToken=true'">Token</button>
        <button onclick="location.href = 'index.jsp?logout=true'" type="button">Logout</button>
        <button onclick="location.href = '${accountUri}'" type="button">Account</button>
    </div>

    <c:if test="${showToken}">
        <div class="content">
            <div id="token-content" class="message">${tokenString}</div>
        </div>
    </c:if>

    <c:if test="${!showToken}">
        <div class="content">
            <div id="profile-content" class="message">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="label">First name</td>
                        <td><span id="firstName">${idToken.givenName}</span></td>
                    </tr>
                    <tr class="even">
                        <td class="label">Last name</td>
                        <td><span id="lastName">${idToken.familyName}</span></td>
                    </tr>
                    <tr>
                        <td class="label">Username</td>
                        <td><span id="username">${idToken.preferredUsername}</span></td>
                    </tr>
                    <tr class="even">
                        <td class="label">Email</td>
                        <td><span id="email">${idToken.email}</span></td>
                    </tr>
                </table>
            </div>
        </div>
    </c:if>
</div>
</body>
</html>
