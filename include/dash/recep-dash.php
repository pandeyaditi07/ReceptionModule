<div class="row">
  <div class="col-md-12">
    <h3 class="app-heading w-pr-100 m-t-0"><i class="fa fa-home"></i> Reception Dashboard </h3>
  </div>
</div>

<div class="row">
  <div class="col-md-12 text-right">
    <a href="#" onclick="Databar('AddVisitPopUp')" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Visitor</a>
    <a href="<?php echo APP_URL; ?>/rec/" class="btn btn-sm btn-primary"><i class="fa fa-tablet"></i> Enable Tablet View</a>
    <hr>
  </div>

  <?php
  $FetchCallStatus = _DB_COMMAND_(CONFIG_DATA_SQL("VISITOR_TYPES"), true);
  if ($FetchCallStatus != null) {
    foreach ($FetchCallStatus as $Status) { ?>
      <div class="col-md-3 col-6 mb-10px">
        <a href="<?php echo APP_URL; ?>/visitors/?view_for=<?php echo $Status->ConfigValueDetails; ?>">
          <div class="card card-window card-body rounded-3 p-4 shadow-lg">
            <div class="flex-s-b">
              <h2 class="count mb-0 m-t-5 h1">
                <?php echo TOTAL("SELECT * FROM visitors where VisitPersonType like '%" . $Status->ConfigValueDetails . "%'"); ?>
              </h2>
            </div>
            <p class="mb-0 fs-14 text-black">All <?PHP echo $Status->ConfigValueDetails; ?></p>
          </div>
        </a>
      </div>
  <?php }
  }
  ?>
  <div class="col-md-12">
    <hr>
    <h4 class="app-heading">Latest 10 Visitors</h4>
    <?php
    include __DIR__ . "/../forms/VisitorAddPopWindow.php";
    $start = START_FROM;
    $viewlimit = DEFAULT_RECORD_LISTING;

    if (LOGIN_UserType == "Admin" || LOGIN_UserType == "HR") {
      if (isset($_GET['view_for'])) {
        $view_for = $_GET['view_for'];
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where VisitPersonType like '%$view_for%' GROUP By VisitorPersonPhone ORDER BY VisitorId DESC limit $start, $viewlimit", true);
      } elseif (isset($_GET['fromdate'])) {
        $fromdate = $_GET['fromdate'];
        $todate = $_GET['todate'];
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where DATE(VisitPersonCreatedAt)>='$fromdate' and DATE(VisitPersonCreatedAt)<='$todate' GROUP By VisitorPersonPhone order by VisitorId DESC limit $start, $viewlimit", true);
      } elseif (isset($_GET['VisitorPersonName'])) {
        $VisitorPersonName = $_GET['VisitorPersonName'];
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where VisitorPersonName like '%$VisitorPersonName%' GROUP By VisitorPersonPhone order by VisitorId DESC limit $start, $viewlimit", true);
      } else {
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors GROUP By VisitorPersonPhone ORDER BY VisitorId DESC limit $start, $viewlimit", true);
      }
    } else {
      if (isset($_GET['view_for'])) {
        $view_for = $_GET['view_for'];
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where VisitPesonMeetWith='" . LOGIN_UserId . "' and VisitPersonType like '%$view_for%' ORDER BY VisitorId DESC", true);
      } elseif (isset($_GET['VisitorPersonName'])) {
        $VisitorPersonName = $_GET['VisitorPersonName'];
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where VisitPesonMeetWith='" . LOGIN_UserId . "' and VisitorPersonName like '%$VisitorPersonName%' order by VisitorId DESC", true);
      } else {
        $AllVisitors = _DB_COMMAND_("SELECT * FROM visitors where VisitPesonMeetWith='" . LOGIN_UserId . "' ORDER BY VisitorId DESC", true);
      }
    }
    if ($AllVisitors != null) {
      $SerialNo = SERIAL_NO;
      foreach ($AllVisitors as $Visitor) {
        $SerialNo++;
    ?>
        <div class='col-md-12 search-data'>
          <p class='data-list p-2 flex-s-b'>
            <span class='w-pr-5'><?php echo $SerialNo; ?></span>
            <span class='w-pr-15'>
              <a href="#" onclick="Databar('edit_<?php echo $Visitor->VisitorId; ?>')" class='text-primary bold'>
                <?php echo $Visitor->VisitorPersonName; ?>
              </a>
            </span>
            <span class='w-pr-12'><?php echo $Visitor->VisitorPersonPhone; ?></span>
            <span class='w-pr-15'><?php echo $Visitor->VisitPersonType; ?></span>
            <span class='w-pr-20'><?php echo FETCH("SELECT * FROM users where UserId='" . $Visitor->VisitPesonMeetWith . "'", "UserFullName"); ?></span>
            <span class='w-pr-10'><?php echo DATE_FORMATES("d M, Y", $Visitor->VisitPersonCreatedAt); ?></span>
            <span class='w-pr-20'><?php echo $Visitor->VisitEnquiryStatus; ?></span>
            <span class='w-pr-20'><?php echo DATE_FORMATES("h:i A", $Visitor->VisitPersonCreatedAt); ?> -
              <?php echo DATE_FORMATES("h:i A", $Visitor->VisitorOutTime); ?></span>
            <span class='w-pr-10 text-right'>
              <a href="#" onclick="Databar('edit_<?php echo $Visitor->VisitorId; ?>')" class='text-info'>Update</a>
            </span>
          </p>
        </div>
    <?php
        include $Dir . "/include/forms/VisitorUpdatePopWindow.php";
      }
    } else {
      NoData("No Visitor Found!");
    }
    PaginationFooter(TOTAL("SELECT * FROM visitors GROUP By VisitorPersonPhone"), "index.php"); ?>
  </div>
</div>