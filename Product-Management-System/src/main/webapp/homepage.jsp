<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ProdManageX</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        header {
            background-color: orangered;
            color: white;
            padding: 15px 20px;
            text-align: center;
        }

        nav {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 30px;
            padding: 10px 0;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #575757;
        }

        .content {
            padding: 60px 20px;
            text-align: center;
            font-size: 16px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            nav {
                flex-direction: column; /* Stack the nav links vertically */
                gap: 15px;
            }

            nav a {
                padding: 12px 18px;
                font-size: 14px;
            }

            .content {
                padding: 40px 20px;
            }

            footer {
                font-size: 12px;
            }
        }

        @media (max-width: 480px) {
            header h1 {
                font-size: 20px; /* Adjust font size for smaller screens */
            }

            .content h2 {
                font-size: 18px;
            }

            .content p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to ProdManageX</h1>
    </header>
    <nav>
        <a href="homepage.jsp">Home</a>
        <a href="add-product.jsp">Add Product</a>
        <a href="/products">Manage Products</a>
        <a href="search-product.jsp">Search Product</a>
    </nav>
    <div class="content">
        <h2>Your One-Stop Solution for Managing Products</h2>
        <p>Navigate through the menu to add, view, and manage your products effectively.</p>
    </div>
    <footer> &copy; 2024 ProdManageX. All rights reserved. </footer>
</body>
</html>
