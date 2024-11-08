<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
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
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
        }

        /* Dashboard Title */
        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Card Container */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            max-width: 800px;
        }

        /* Card Styling */
        .card {
            background-color: #fff;
            width: 180px;
            height: 120px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 18px;
        }

        /* Card Hover Effect */
        .card:hover {
            background-color: #007bff;
            color: #fff;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <h2>Employee Dashboard</h2>

    <!-- Card Container -->
    <div class="card-container">
        <!-- New Customer Card -->
        <a href="Add_Customer" class="card">New Customer</a>

        <!-- Check Room Card -->
        <a href="/check-room" class="card">Check Room</a>

        <!-- Customer Details Card -->
        <a href="/customer-details" class="card">Customer Details</a>

        <!-- Update Room Card -->
        <a href="/update-room" class="card">Update Room</a>
    </div>

</body>
</html>
