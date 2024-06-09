<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Accio.SearchResult" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/3d-rendering-neon-triangle.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: white; /* Default text color */
        }
        .container {
            max-width: 800px;
            padding: 20px;
            background-color: rgba(50, 0, 50, 0.8); /* Dark purple background */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            position: relative; /* Ensure the container is positioned */
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.4), 0 0 30px rgba(255, 255, 255, 0.6); /* Permanent light effect */
            background-color: #fff; /* White background */
            color: black; /* Text color */
            border-radius: 8px; /* Rounded corners */
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #800080; /* Darker purple */
            color: white;
        }
        td {
            background-color: #dda0dd; /* Light purple */
            color: black; /* Black text */
        }
        a {
            color: #800080; /* Dark purple */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search Results</h2>
        <table border="1">
            <tr>
                <th>Title</th>
                <th>Link</th>
            </tr>
            <%
                ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
                if (results != null) {
                    for(SearchResult result : results) {
            %>
            <tr>
                <td><%= result.getTitle() %></td>
                <td><a href="<%= result.getLink() %>"><%= result.getLink() %></a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
