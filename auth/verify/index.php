<?php
require "../../acm/SysFileAutoLoader.php";
if (isset($_SESSION['LOGIN_USER_ID'])) {
    LOCATION("info", "Welcome User, You are login in successfully!", DOMAIN . "/app/index.php");
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?php echo APP_NAME; ?> | Forget</title>
    <meta content="width=device-width, initial-scale=0.9, maximum-scale=0.9, user-scalable=no" name="viewport" />
    <?php include "../../assets/HeaderFiles.php"; ?>
</head>

<body class="hold-transition login-page" style="background-image:url('<?php echo LOGIN_BG_IMAGE; ?>');background-size:cover;background-repeat:no-repeat;">
    <div class="login-box">
        <?php include "../../include/app/Loader.php"; ?>

        <div class="card">
            <div class="card-header text-center">
                <img src="<?php echo MAIN_LOGO; ?>" class="img-fluid w-50"><br>
                <br>
                <a href="<?php echo DOMAIN; ?>" class="h5">Verify Your Account!</a>
            </div>
            <div class="card-body">
                <h4><i class="fa fa-check-circle-o text-success"></i> Password Reset Link Sent!</h4>
                <hr>
                <p> Password Reset Link is sent successfully on submitted email id <b><?php echo $_SESSION['REQUESTED_EMAIL']; ?></b>. Change your password by following that link.</p>

                <a href="<?php echo DOMAIN; ?>/app" class="btn btn-block btn-dark">Back to Login</a>
            </div>

        </div>

    </div>
    <?php include "../../assets/FooterFiles.php"; ?>
</body>

</html>