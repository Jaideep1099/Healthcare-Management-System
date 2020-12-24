<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Animated Login</title>
    <link rel="stylesheet" href="style/login.css">
</head>
<body>
    <img src="images/loginBack.jpg" id="background">
    <div class="center">
        <h1>Login</h1>
        <form method="post" action="">
            <div class="txt_field">
                <input type="text" required>
                <span></span>
                <label>Username</label>
            </div>
            <div class="txt_field">
                <input type="password" required>
                <span></span>
                <label>Password</label>
            </div>
            <div>
                <input type="radio" name="type" value="u" required> User
                <input type="radio" name="type" value="d" required> Doctor
                <input type="radio" name="type" value="p" required> Pharmacist
                <br><br>
            </div>
            <!--<div class="pass">Forgot Password?</div>-->
            <input type="submit" value="Login">
            <div class="signup_link">
                Not a member?<a href="/signup">Signup</a>
            </div>
        </form>
    </div>
    
</body>
</html>