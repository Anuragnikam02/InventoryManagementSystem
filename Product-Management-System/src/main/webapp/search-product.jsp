<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.avn.entity.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        h2 {
            text-align: center;
            color: orangered;
            margin-top: 20px;
        }

        form {
            width: 90%;
            max-width: 500px;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: orangered;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: orangered;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: darkred;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 20px auto;
            text-decoration: none;
            color: orangered;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #ff5733;
        }

        .result {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
            color: darkgreen;
        }
        
        /* Media query for smaller screens */
        @media (max-width: 600px) {
            form {
                width: 90%;
            }

            input[type="submit"] {
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <h2>Search Product</h2>

    <!-- Form to search product -->
    <form action="/search-product" method="get">
        <label for="id">Enter Product ID:</label>
        <input type="number" id="id" name="id" required>

        <input type="submit" value="Search">
    </form>

    <%
        // Retrieve the product and error message attributes from the request
        Product product = (Product) request.getAttribute("product");
        String errorMessage = (String) request.getAttribute("error");

        if (product != null) {
    %>
        <div class="result">
            <p>Product ID: <%= product.getId() %></p>
            <p>Name: <%= product.getName() %></p>
            <p>Price: <%= product.getPrice() %></p>
            <p>Quantity: <%= product.getQty() %></p>
            <p>Category: <%= product.getCategory() %></p>
        </div>
    <%
        } else if (errorMessage != null) {
    %>
        <div class="result" style="color: green;">
            <p><%= errorMessage %></p>
        </div>
    <%
        }
    %>

    <!-- Link to go back to the Products page -->
    <a href="/products" class="back-link">Back to Products</a>
</body>
</html>
