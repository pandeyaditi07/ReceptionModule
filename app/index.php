<?php
$Dir = "..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Dashboard";
$PageDescription = "Main Dashboard of " . APP_NAME . " for Highlighted and latest checkups about available data";

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
  <style>
    .card {
      box-shadow: 0px 0px 1px black !important;
      background-color: white !important;
    }
  </style>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <?php
    include $Dir . "/include/app/Header.php";
    include $Dir . "/include/sidebar/get-side-menus.php";
    include $Dir . "/include/app/Loader.php";
    ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card card-primary">
                <div class="card-body">

                  <div class="row">
                    <div class="col-md-12">
                      <?php
                      $GetTodayQuotes = _DB_COMMAND_("SELECT * FROM app_quotes where AppQuoteStatus='Active' and DATE(AppQuoteDate)='" . date('Y-m-d') . "'", true);
                      if ($GetTodayQuotes != null) { ?>
                        <div class="flex-s-b daily-quotes">
                          <span class="pull-left">
                            <i class="fa fa-quote-left"></i>
                          </span>
                          <marquee>
                            <?php foreach ($GetTodayQuotes as $Quote) { ?>
                              <span><?php echo SECURE($Quote->AppQuoteName, "d"); ?></span>
                            <?php } ?>
                          </marquee>
                          <span class="pull-right">
                            <i class="fa fa-quote-right"></i>
                          </span>
                        </div>
                      <?php } ?>
                    </div>
                  </div>
                  <?php
                  include __DIR__ . '/../include/dash/recep-dash.php';

                  
                  ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

    <?php include $Dir . "/include/app/Footer.php"; ?>
  </div>

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>