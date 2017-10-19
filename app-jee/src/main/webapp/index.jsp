
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Main page</title>
</head>
<body>
    <h1 id="greeting">Hello</h1>


<p>LDAP Host: ${configBean.ldapHost}</p>

<button onclick="location.href = 'retail/index.jsp'" type="button">retail index</button>
<button onclick="location.href = 'wholesale/index.jsp'" type="button">wholesale index</button>


<script src="//ajax.googleapis.com/ajax/libs/dojo/1.12.1/dojo/dojo.js"
        data-dojo-config="async: true"></script>
<script>
    require([
        'dojo/dom',
        'dojo/domReady!'
    ], function (dom) {
        var greeting = dom.byId('greeting');
        greeting.innerHTML += ' from Dojo in OpenShift!';
    });
</script>
</body>
</html>
