<html>
<head>
    <title>Interactive Quiz JSP</title>
    <style>
        .question {
            margin-bottom: 10px;
        }

        .result {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Interactive Quiz</h1>

    <form action="" method="post">
        <div class="question">
            <p>1. What is the capital of France?</p>
            <label><input type="radio" name="q1" value="Paris"> Paris</label>
            <label><input type="radio" name="q1" value="Berlin"> Berlin</label>
            <label><input type="radio" name="q1" value="Madrid"> Madrid</label>
        </div>

        <div class="question">
            <p>2. Which planet is known as the Red Planet?</p>
            <label><input type="radio" name="q2" value="Earth"> Earth</label>
            <label><input type="radio" name="q2" value="Mars"> Mars</label>
            <label><input type="radio" name="q2" value="Jupiter"> Jupiter</label>
        </div>

        <div class="question">
            <p>3. How many continents are there?</p>
            <label><input type="radio" name="q3" value="5"> 5</label>
            <label><input type="radio" name="q3" value="7"> 7</label>
            <label><input type="radio" name="q3" value="9"> 9</label>
        </div>

        <input type="submit" value="Submit Quiz">
    </form>

    <hr>

    <%
        // Process quiz submission
        if (request.getMethod().equalsIgnoreCase("post")) {
            int score = 0;

            // Check answers and calculate the score
            if ("Paris".equals(request.getParameter("q1"))) {
                score++;
            }
            if ("Mars".equals(request.getParameter("q2"))) {
                score++;
            }
            if ("7".equals(request.getParameter("q3"))) {
                score++;
            }

            // Display the result
    %>
            <div class="result">
                <p>Your Quiz Result:</p>
                <p>Correct Answers: <%= score %></p>
                <p>Incorrect Answers: <%= 3 - score %></p>
            </div>
    <%
        }
    %>

</body>
