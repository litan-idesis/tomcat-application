<html>
<head>
    <title>Simple JSP Web App</title>
</head>
<body>
    <h1>Simple JSP Web App</h1>

    <%
        String userName = request.getParameter("userName");
        if (userName != null && !userName.isEmpty()) {
    %>
        <p>Hello, <%= userName %>!</p>
    <%
        } else {
    %>
        <form action="" method="post">
            Enter your name: <input type="text" name="userName">
            <input type="submit" value="Submit">
        </form>
    <%
        }
    %>

</body>
</html>