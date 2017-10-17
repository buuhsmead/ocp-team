
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>

<p>LDAP Host: ${configBean.ldapHost}</p>

<button onclick="location.href = 'retail/index.jsp'" type="button">retail index</button>
<button onclick="location.href = 'wholesale/index.jsp'" type="button">wholesale index</button>
</body>
</html>
