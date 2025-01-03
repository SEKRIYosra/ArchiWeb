<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vos Tâches</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 50%;
            padding: 20px;
            text-align: center;
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"] {
            padding: 10px;
            width: 70%;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .tasks-container {
            margin-top: 20px;
            text-align: left;
        }
        .task-item {
            display: flex;
            align-items: center;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .task-icon {
            font-size: 20px;
            color: #4CAF50;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Vos Tâches pour cette Semaine</h1>
        <form method="post" action="tasks">
            <input type="text" name="task" id="task" placeholder="Ajouter une nouvelle tâche..." required>
            <button type="submit">Ajouter</button>
        </form>
        <div class="tasks-container">
            <h2>Tâches existantes :</h2>
            <ul>
                <!-- Tâches fixes -->
                <li class="task-item">
                    <span class="task-icon">✅</span> Préparer la présentation
                </li>
                <li class="task-item">
                    <span class="task-icon">✅</span> Finaliser le rapport de projet
                </li>
                <li class="task-item">
                    <span class="task-icon">✅</span> Participer à la réunion d'équipe
                </li>
                <!-- Tâches dynamiques ajoutées -->
                <c:forEach var="task" items="${tasks}">
                    <li class="task-item">
                        <span class="task-icon">📝</span> ${task}
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</body>
</html>
