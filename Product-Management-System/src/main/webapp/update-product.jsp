<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.avn.entity.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
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

        /* Responsive styling for smaller screens */
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
    <h2>Update Product</h2>
    <% 
        // Retrieve the product object from the request
        Product product = (Product) request.getAttribute("product");
    %>
    <form action="update-Product" method="post">
        <!-- Hidden input for the product ID -->
        <input type="hidden" name="id" value="<%= product.getId() %>">

        <!-- Product Name input field -->
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" value="<%= product.getName() %>" required>

        <!-- Product Price input field -->
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="<%= product.getPrice() %>" required>

        <!-- Product Quantity input field -->
        <label for="qty">Quantity:</label>
        <input type="number" id="qty" name="qty" value="<%= product.getQty() %>" required>

        <!-- Product Category input field -->
        <label for="category">Category:</label>
        <input type="text" id="category" name="category" value="<%= product.getCategory() %>" required>

        <!-- Submit button for updating the product -->
        <input type="submit" value="Update Product">
    </form>

    <!-- Link to go back to the Products page -->
    <a href="/products" class="back-link">Back to Products</a>
</body>
</html>
