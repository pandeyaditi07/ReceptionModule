<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "All Visits @ " . date("d M, Y");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <meta content="width=device-width, initial-scale=0.9, maximum-scale=0.9, user-scalable=no" name="viewport" />
  <meta name="keywords" content="<?php echo APP_NAME; ?>">
  <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">
  <?php include $Dir . "/assets/HeaderFiles.php"; ?>
</head>

<body class="hold-transition m-0">

  <div class="container-fluid p-2">

    <?php if (DEVICE_TYPE == "COMPUTER") { ?>
      <div class="row shadow-sm">
        <div class="col-md-5 text-center pt-4">
          <h1 class="mt-5 pt-3"></h1>
          <img src="<?php echo APP_LOGO; ?>" class="w-100 mt-5 no-shadow pt-5 p-2">
        </div>
        <div class="col-md-7 text-center pt-5">
          <h1 class="display-5 mt-2">Welcome to
            <br><b><?php echo APP_NAME; ?></b>!
          </h1>
          <p class="mt-5 display-6 mb-5">We're excited to have you here. To ensure the safety of everyone on our premises, we kindly request all visitors to please sign in at the reception. If you have any questions or need assistance, our reception team is here to help. Your cooperation is greatly appreciated.</p>
          <a href="add.php" class="btn btn-lg btn-success rounded-circle mt-2"><i class="fa fa-plus"></i> ADD VISIT DETAILS</a><br>
          <a href="entries.php" class="btn btn-lg btn-default rounded-circle mt-5"> View Visits</a>
          <p class="mt-2 display-6 bold pt-5">Thanking you for your visit!</p>
          <img src="<?php echo STORAGE_URL_D; ?>/bg/recep-bottom-banner.png" class="img-fluid no-shadow">
        </div>
      </div>
    <?php } else { ?>
      <div class="row">
        <div class="col-md-12 text-center">
          <img src="https://static.vecteezy.com/system/resources/previews/026/795/272/non_2x/gold-ribbon-banner-free-free-png.png" class="rece-top-ban">
          <br><br>
          <h1 class="display-5 bold mt-5 pt-5">Welcome to</h1>
          <img src="<?php echo APP_LOGO; ?>" class="w-100 p-4 no-shadow mt-2">
          <h4 class="mt-4 display-5 mb-3">We're excited to have you here. To ensure the safety of everyone on our premises, we kindly request all visitors to please sign in at the reception. If you have any questions or need assistance, our reception team is here to help. Your cooperation is greatly appreciated.</h4>

          <a href="add.php" class="btn btn-lg btn-success rounded-circle mt-5"><i class="fa fa-plus"></i> ADD VISIT DETAILS</a><br>
          <a href="entries.php" class="btn btn-lg btn-default rounded-circle mt-5"> View Visits</a>
          <p class="mt-3 display-6 bold pt-5">Thanking you for your visit!</p>

          <img src="<?php echo STORAGE_URL_D; ?>/bg/recep-bottom-banner.png" class="rece-bottom-img no-shadow">
        </div>
      </div>
    <?php } ?>
  </div>

  <?php
  include $Dir . "/include/app/Footer.php";
  include $Dir . "/include/forms/VisitorAddPopWindow.php";
  include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>