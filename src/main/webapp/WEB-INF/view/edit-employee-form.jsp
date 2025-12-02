<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>

    <style>
        /* ---- BEAUTIFUL GRADIENT BACKGROUND ---- */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* ---- GLASSMORPHISM CARD ---- */
        .container {
            width: 420px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 30px 40px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.2);
            color: white;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ---- HEADER ---- */
        h1 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 28px;
            font-weight: 600;
            text-shadow: 0 2px 10px rgba(0,0,0,0.3);
        }

        /* ---- INPUT BOXES ---- */
        .input-box {
            margin-bottom: 18px;
        }

        label {
            font-size: 15px;
            font-weight: 500;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            outline: none;
            margin-top: 5px;
            font-size: 14px;
            background: rgba(255,255,255,0.8);
        }

        input[type="text"]:hover {
            background: rgba(255,255,255,0.95);
        }

        /* ---- SUBMIT BUTTON ---- */
        .btn {
            width: 100%;
            padding: 12px;
            background: #ffffff;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            color: #2575fc;
            cursor: pointer;
            margin-top: 15px;
            transition: 0.3s ease;
        }

        .btn:hover {
            background: #2575fc;
            color: white;
            box-shadow: 0 4px 20px rgba(0,0,0,0.3);
            transform: translateY(-2px);
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Edit Employee</h1>

        <form action="/editEmployee" method="post">

            <input type="hidden" name="id" value="${employee.id}">

            <div class="input-box">
                <label>Name</label>
                <input type="text" name="name" value="${employee.name}">
            </div>

            <div class="input-box">
                <label>Salary</label>
                <input type="text" name="salary" value="${employee.salary}">
            </div>

            <div class="input-box">
                <label>Designation</label>
                <input type="text" name="designation" value="${employee.designation}">
            </div>

            <button type="submit" class="btn">Save Changes</button>

        </form>
    </div>

</body>
</html>
