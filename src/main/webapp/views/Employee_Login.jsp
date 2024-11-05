<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Reset styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
/* nav bar */
nav ul {
    list-style: none;
    display: flex;
    background-color: #333;
    padding: 10px;
    justify-content: center;
}

nav ul li {
    margin: 0 15px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
}
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f2f5;
            font-family: Arial, sans-serif;
            flex-direction: column;

        }
    

        /* Navigation Bar */
        nav {
            width: 100%;
            background-color: #333;
            padding: 10px 0;
            display: flex;
            justify-content: center;
            position: fixed;
            top: 0;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav ul li a:hover {
            background-color: #007bff;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #0056b3;
        }

        .warning{
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }

        .warning:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="emp_login">Employee</a></li>
            <li><a href="#admin">Admin</a></li>
            <li><a href="#">Contact</a></li>

        </ul>
    </nav>
    <div class="login-container">
        <h2>Login</h2>
  

        <form action="/login" method="POST">
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="login-btn">Login</button>
            <a href="emp_reg" class="warning">Not Register?Regiser</a>
        </form>
    </div>

</body>
</html>