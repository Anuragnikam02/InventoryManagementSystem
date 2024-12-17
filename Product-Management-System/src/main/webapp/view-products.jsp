<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.avn.entity.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Products</title>
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

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: center;
        }

        table th {
            background-color: orangered;
            color: white;
            font-weight: bold;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        a {
            color: orangered;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ff5733;
        }

        .button-redirect-link {
            display: block;
            padding: 10px 15px;
            background-color: orangered;
            color: white;
            text-decoration: none;
            width: fit-content;
            border-radius: 8px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .button-redirect-link:hover {
            background-color: darkred;
            color: white;
        }

        /* Flex container for buttons */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
            flex-wrap: wrap; /* Allow buttons to wrap on small screens */
        }

        /* Responsive table */
        @media (max-width: 768px) {
            table th, table td {
                padding: 8px;
            }

            .button-container {
                flex-direction: column;
                align-items: center;
            }

            table {
                width: 100%;
            }
        }

        /* For mobile devices */
        @media (max-width: 600px) {
            table {
                width: 100%;
            }
            table th, table td {
                padding: 8px 5px;
            }
            .button-redirect-link {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <h2>Products</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<Product> products = (List<Product>) request.getAttribute("products");
                for (Product product : products) {
            %>
                <tr>
                    <td><%= product.getId() %></td>
                    <td><%= product.getName() %></td>
                    <td><%= product.getPrice() %></td>
                    <td><%= product.getQty() %></td>
                    <td><%= product.getCategory() %></td>
                    <td>
                    	<a href="updateProductForm?id=<%= product.getId() %>">Update</a>&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="/delete-product?id=<%= product.getId() %>">Delete</a> 
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <div class="button-container">
        <a href="/add-product" class="button-redirect-link">Add New Product</a>
        <a href="/dashboard" class="button-redirect-link">Homepage</a>
    </div>
</body>
</html>
