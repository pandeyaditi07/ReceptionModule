<?php
$CheckSiteVisit = CHECK("SELECT reception_sitevisit_status, reception_sitevisit_user_main_id FROM reception_sitevisit where reception_sitevisit_status='1' and reception_sitevisit_user_main_id='" . LOGIN_UserId . "'");
if ($CheckSiteVisit != null) {
  if (isset($_GET['hide_Site_Visit_pop'])) {
    $_SESSION['hide_Site_Visit_pop'] = "none";
    $SiteVisitDisplay = "none";
  } else {
    if (isset($_SESSION['hide_Site_Visit_pop'])) {
       $SiteVisitDisplay = $_SESSION['hide_Site_Visit_pop'];
    } else {
       $SiteVisitDisplay = "block";
    }
  }
?>
  <section class="follow-up-reminder" id='SiteVisitPOPUP' style="display:<?php echo  $SiteVisitDisplay; ?>;">
    <div class="reminder-box w-100">
      <div class="container">   
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>Site-Visit Received</h5>
            </div>
            <div class="row" style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              $AllVisitors = _DB_COMMAND_("SELECT *  FROM reception_sitevisit where reception_sitevisit_status='1' and reception_sitevisit_user_main_id='" . LOGIN_UserId . "' ORDER BY reception_sitevisit_id DESC", true);
              if ($AllVisitors != null) {
                $SerialNo = 0;
                foreach ($AllVisitors as $Visitor) { 
                  $SerialNo++;  
              ?>
                  <div class="col-md-6">
                    <div class="shadow-sm bg-white p-2">
                      <div class="flex-s-b">
                        <div class="w-pr-100 shadow-sm p-2 m-1">
                          <h6 class='app-sub-heading fs-15'><?php echo $Visitor->reception_sitevisit_customer_name; ?></h6>
                          <span class="w-100">
                           <span class="p-1 m-t-10"><i class="fa fa-phone text-success"></i><?php echo $Visitor->reception_sitevisit_customer_mobile_number; ?></span> <br>
                           <span class="p-1 m-t-10"><i class="text-secondary fa fa-envelope"></i><?php echo GetUserData($Visitor-> reception_sitevisit_user_main_id, "UserEmailId"); ?></span>
                            <i class="text-secondary italic pull-right"><?php echo DATE_FORMATES("d M, Y", $Visitor->reception_sitevisit_created_at); ?></i>
                          </span><br>
                          <span class="p-1 m-t-10"><i class="text-success"></i> <?php echo $Visitor->reception_sitevisit_in_time; ?></span><br>
                          <span class="p-1"><i class="text-danger"></i> <?php echo $Visitor->reception_sitevisit_out_time; ?></span>
                          <hr class="mt-1 mb-2">
                          <div class="flex-s-b">
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_sitevisit_id" => $Visitor->reception_sitevisit_id
                              ]) ?>
                              <button name="ApproveVisitorRequest" class="btn btn-xs btn-success" type="submit"><i class='fa fa-check'></i> APPROVE</button>
                            </form>
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_sitevisit_id" => $Visitor->reception_sitevisit_id
                              ]) ?>
                              <button name="RejectVisitorRequest" class="btn btn-xs btn-danger" type="submit"><i class='fa fa-check'></i> REJECT</button>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
              <?php
                }
              } else {
                NoData("No Visitor Found!");
              } ?>
            </div>
            <div class='col-md-12 mt-4 text-center'>
              <a href="?hide_Site_Visit_pop=false" onclick="Databar('SiteVisitPOPUP')" class="btn btn-success btn-sm" style="border-radius:2rem !important;">Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div>
        </div>
      </div>
    </div>
  </section>
<?php }
?>