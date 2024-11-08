<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Customer</title>
    <style>
        /* Reset styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
        }

        /* Form Container */
        .form-container {
            background-color: #fff;
            padding: 40px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .form-container h2 {
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

        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add New Customer</h2>
        <c:if test="${not empty SucMsg}">
            <h4 style="color: rgb(14, 162, 11);">${SucMsg}</h4>
           </c:if>
           
           
        <c:if test="${not empty FailMsg}">
        <h4 style="color: rgb(250, 82, 82);">${FailMsg}</h4>
       </c:if>
        <form action="userregister" method="POST">
            <!-- Name Field -->
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <!-- Age Field -->
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" required min="18" max="100">
            </div>

            <!-- Mobile Number Field -->
            <div class="form-group">
                <label for="mobile">Mobile No.</label>
                <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" required>
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Address Field -->
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" required>
            </div>

            <!-- Aadhaar Number Field -->
            <div class="form-group">
                <label for="aadhaar">Aadhaar No.</label>
                <input type="text" id="aadhaar" name="aadhaar" pattern="[0-9]{12}" required>
            </div>

            <!-- Total Members Field -->
            <div class="form-group">
                <label for="totalMembers">Total Members</label>
                <input type="number" id="totalMembers" name="totalMembers" required min="1">
            </div>

            <!-- Allocate Room Number Field -->
            <div class="form-group">
                <label for="roomNo">Allocate Room No.[1-50]</label>
                <input type="number" id="roomNo" name="roomNo" required min="1">
            </div>

            <!-- Booking Status Field -->
            <div class="form-group">
                <label for="bookingStatus">Booking Status</label>
                <select id="bookingStatus" name="bookingStatus" required>
                    <option value="">Select Status</option>
                    <option value="booked">Booked</option>
                    <option value="notBooked">Not Booked</option>
                </select>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="submit-btn">Add Customer</button>
        </form>
    </div>

</body>
</html>
