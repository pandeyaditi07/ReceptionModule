<?php
require "../../acm/SysFileAutoLoader.php";

if (isset($_SESSION['LOGIN_USER_ID'])) {
    LOCATION("info", "Welcome User, You are login in successfully!", DOMAIN . "/app/index.php");
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?php echo APP_NAME; ?> | Login</title>
    <meta content="width=device-width, initial-scale=0.9, maximum-scale=0.9, user-scalable=no" name="viewport" />
    <?php include "../../assets/HeaderFiles.php"; ?>
</head>

<body class="hold-transition login-page bg-white">
    <div class="login-box">
        <?php
        include "../../include/app/Loader.php"; ?>
        <div class="card border-0">
            <div class=" card-header text-center">
                <img src="<?php echo MAIN_LOGO; ?>" class="img-fluid w-25"><br>
                <br>
                <a href="<?php echo DOMAIN; ?>" class="h5"><i class="fa fa-lock text-success"></i> Login to Account </a>
            </div>
            <div class="card-body">
                <form action="<?php echo CONTROLLER("AuthController/AuthController.php"); ?>" method="POST" class="fs-13px">
                    <?php FormPrimaryInputs(true); ?>
                    <div class="form-group mb-20px">
                        <label for="emailAddress" class="fs-13px text-gray-600">Email Address</label>
                        <input type="email" class="form-control form-control-lg h-40px fs-20" name="UserEmailId" placeholder="Email Address" />
                    </div>
                    <div class="form-group mb-15px m-t-15">
                        <label for="password" class="fs-13px text-gray-600">Password</label>
                        <input type="password" name="UserPassword" class="form-control form-control-lg h-40px fs-20" placeholder="*******" />
                    </div>
                    <div class="mb-10px text-dark p-2 pl-0">
                        Forget Password? <a href="<?php echo DOMAIN; ?>/auth/forget/" class="text-primary">Recover Password</a>
                    </div>
                    <div class="mb-15px">
                        <button type="submit" name="LoginRequest" class="btn btn-dark d-block h-45px w-100 btn-lg fs-14px"><i class="fa fa-lock text-white"></i> Secured Login</button>
                    </div>
                    <hr class="bg-gray-600 opacity-2 mt-50px" />
                    <?php include "../../include/auth/login-footer.php"; ?>
                </form>
            </div>
        </div>

    </div>
    <?php include "../../assets/FooterFiles.php"; ?>
</body>

</html>