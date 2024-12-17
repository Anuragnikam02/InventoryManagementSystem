<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
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

        .home-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: orangered;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .home-btn:hover {
            background-color: darkred;
        }

        form {
            width: 90%;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: orangered;
        }

        form input,
        form select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        form input[type="submit"] {
            background-color: orangered;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            width: 100%;
            padding: 12px;
        }

        form input[type="submit"]:hover {
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

        /* Responsive Styles */
        @media (max-width: 600px) {
            .home-btn {
                font-size: 16px;
                padding: 8px 15px;
            }

            h2 {
                font-size: 20px;
            }

            form {
                width: 95%;
                padding: 15px;
            }

            form input[type="submit"] {
                padding: 15px;
            }

            label {
                font-size: 14px;
            }

            form input,
            form select {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <!-- Home link -->
    <a href="/dashboard" class="home-btn">Homepage</a>

    <h2>Add Product</h2>

    <form action="/save-product" method="post">
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter product name" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" placeholder="Enter price" step="0.01" min="0" required>

        <label for="qty">Quantity:</label>
        <input type="number" id="qty" name="qty" placeholder="Enter quantity" min="1" required>

        <label for="category">Category:</label>
        <select id="category" name="category" required>
            <option value="Electronics">Electronics</option>
            <option value="Fashion">Fashion</option>
            <option value="Home Appliances">Home Appliances</option>
            <option value="Books">Books</option>
            <option value="Other">Other</option>
        </select>

        <input type="submit" value="Add Product">
    </form>

    <a href="/products" class="back-link">Back to Products</a>
</body>
</html>
