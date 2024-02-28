<html>
<head>
    <title>Interesting JSP</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Interesting JSP</h1>

    <%
        // Handling form submission
        if (request.getMethod().equalsIgnoreCase("post")) {
            String userName = request.getParameter("userName");

            // Simple form validation
            if (userName == null || userName.trim().isEmpty()) {
    %>
                <p class="error">Please enter a valid username.</p>
    <%
            } else {
                // Process the form data (e.g., store in a database)
    %>
                <p>Welcome, <%= userName %>!</p>
    <%
            }
        }
    %>

    <!-- Form for user input -->
    <form action="" method="post">
        Enter your name: <input type="text" name="userName">
        <input type="submit" value="Submit">
    </form>

    <hr>

    <!-- Display a dynamic list -->
    <h2>Dynamic List</h2>
    <ul>
        <%
            // Display a dynamic list using a loop
            for (int i = 1; i <= 5; i++) {
        %>
            <li>Item <%= i %></li>
        <%
            }
        %>
    </ul>

</body>
</html>
