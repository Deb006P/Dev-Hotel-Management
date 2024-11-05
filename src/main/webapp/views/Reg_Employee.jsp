<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <style>
        /* Reset styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
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

        .register-container {
            background-color: #fff;
            padding: 40px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .register-container h2 {
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

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input:focus, .form-group select:focus {
            border-color: #007bff;
            outline: none;
        }

        .register-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .register-btn:hover {
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
    <div class="register-container">
        <h2>Employee Registration</h2>
        <c:if test="${not empty SucMsg}">
            <h4 style="color: rgba(72, 255, 0, 0.867);">${SucMsg}</h4>
           </c:if>
           
           
    <c:if test="${not empty FailMsg}">
        <h4 style="color: rgb(250, 82, 82);">${FailMsg}</h4>
       </c:if>
        <form action="register" method="POST">
            <!-- Name Field -->
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Mobile No Field -->
            <div class="form-group">
                <label for="mobile">Mobile No</label>
                <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" required>
            </div>

            <!-- Gender Field -->
            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="">Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <!-- City Field -->
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="register-btn">Register</button> 
             <a href="emp_login" class="warning">Already Register?Login</a>
        </form>
    </div>
</body>
</html>
