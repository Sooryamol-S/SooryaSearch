<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Engine</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/3d-rendering-neon-triangle.jpg') no-repeat center center fixed; /* Update path if needed */
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden; /* Hide overflow to prevent scrolling */
        }
        .container {
            max-width: 600px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            animation: fadeIn 2s ease-in-out, growContainer 2s infinite alternate, moveWebsite 2s infinite alternate; /* Fade in, growContainer, and moveWebsite animation */
        }
        @keyframes growContainer {
            from {
                transform: scale(1);
            }
            to {
                transform: scale(1.1);
            }
        }
        @keyframes moveWebsite {
            from {
                transform: translateX(-10px); /* Move 10px to the left */
            }
            to {
                transform: translateX(10px); /* Move 10px to the right */
            }
        }
        input[type="text"] {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: calc(70% - 60px); /* Adjusted width to fit with buttons */
            margin-right: 10px;
            background-color: black;
            color: white;
            outline: none; /* Remove input focus outline */
            text-shadow: 1px 1px 2px #800080; /* Fancy text shadow */
        }
        button {
            padding: 12px 20px;
            font-size: 16px;
            border: none;
            color: white;
            border-radius: 0; /* Remove rounded corners */
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow */
            position: relative; /* For the pseudo-element */
            overflow: hidden;
            animation: pulse 2s infinite alternate; /* Pulse animation */
        }
        @keyframes pulse {
            from {
                transform: scale(1);
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            to {
                transform: scale(1.05);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            }
        }
        button::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.1); /* White overlay */
            z-index: 1;
            transition: opacity 0.3s ease;
            opacity: 0;
            pointer-events: none; /* Ensure clicks go through */
        }
        button:hover::before {
            opacity: 1;
        }
        button:hover {
            transform: scale(1.05); /* Scale up on hover */
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15); /* Enhanced shadow */
        }
        button:focus {
            outline: none; /* Remove button focus outline */
        }
        .logo {
            width: 120px;
            margin-bottom: 20px;
            border-radius: 50%; /* Make the logo round */
            border: 2px solid #800080; /* Purple border */
            padding: 4px; /* Provide some padding for the border */
        }
        form {
            margin: 10px 0;
            display: flex;
            justify-content: center;
        }
        form button {
            margin-left: 10px; /* Adjust spacing between buttons */
        }
        button[type="submit"] {
            background: linear-gradient(to right, #800080, #4b0082); /* Purple gradient for Search button */
        }
        button[type="submit"]:hover {
            background: linear-gradient(to right, #ff7f50, #ffa500); /* Orange gradient for History button */
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container">
        <img class="logo" src="images/3d-rendering-neon-triangle.jpg" alt="Logo"> <!-- Update path if needed -->
        <h2 style="font-family: 'Lucida Handwriting', 'Brush Script MT', cursive;">Welcome to Search Engine!</h2> <!-- Example of using different font families -->
        <form action="Search">
            <input type="text" name="keyword" placeholder="Enter keyword">
            <button type="submit">Search</button>
        </form>
        <form action="History">
            <button type="submit">History</button>
        </form>
    </div>
</body>
</html>
