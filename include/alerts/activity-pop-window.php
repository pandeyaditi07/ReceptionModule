<?php
$CheckActivity = CHECK("SELECT reception_activity_status, reception_activity_user_main_id FROM reception_activity where reception_activity_status='1' and reception_activity_user_main_id='" . LOGIN_UserId . "'");
if ($CheckActivity != null) {
  if (isset($_GET['hide_Activity_pop'])) {
    $_SESSION['hide_Activity_pop'] = "none";
    $ActivityDisplay = "none";
  } else {
    if (isset($_SESSION['hide_Activity_pop'])) {
      $ActivityDisplay = $_SESSION['hide_Activity_pop'];
    } else {
      $ActivityDisplay = "block";  
    }
  }
?>
  <section class="follow-up-reminder" id='ActivityPOPUP' style="display:<?php echo  $ActivityDisplay; ?>;">
    <div class="reminder-box w-100">
      <div class="container">
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>Activity Received</h5>
            </div>
            <div class="row" style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              $AllVisitors = _DB_COMMAND_("SELECT * FROM reception_activity where reception_activity_status='1' and reception_activity_user_main_id='" . LOGIN_UserId . "' ORDER BY reception_activity_id DESC", true);
              if ($AllVisitors != null) {
                $SerialNo = 0;
                foreach ($AllVisitors as $Visitor) {
                  $SerialNo++;
              ?>
                  <div class="col-md-6">
                    <div class="shadow-sm bg-white p-2">
                      <div class="flex-s-b">
                        <div class="w-pr-100 shadow-sm p-2 m-1">
                          <h6 class='app-sub-heading fs-15'><?php echo $Visitor->reception_activity_customer_name; ?></h6>
                          <span class="w-100">
                            <i class="text-primary italic pull-left"><i class="fa fa-hashtag"></i> <?php echo $Visitor->reception_activity_in_time; ?></i>
                            
                            <i class="text-primary italic pull-left"><i class="fa fa-hashtag"></i> <?php echo $Visitor->reception_activity_out_time; ?></i>
                            <i class="text-secondary italic pull-right"><?php echo DATE_FORMATES("d M, Y", $Visitor->reception_activity_created_at); ?></i>
                          </span><br>
                          <span class="p-1 m-t-10"><i class="fa fa-phone text-success"></i> <?php echo $Visitor->reception_activity_customer_mobile; ?></span><br>
                          <span class="p-1"><i class="fa fa-envelope text-danger"></i> <?php echo $Visitor->reception_activity_customer_email_id; ?></span>
                          <hr class="mt-1 mb-2">
                          <div class="flex-s-b">
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_activity_id" => $Visitor->reception_activity_id
                              ]) ?>
                              <button name="ApproveActivityRequest" class="btn btn-xs btn-success" type="submit"><i class='fa fa-check'></i> APPROVE</button>
                            </form>
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_activity_id" => $Visitor->reception_activity_id
                              ]) ?>
                              <button name="RejectActivityRequest" class="btn btn-xs btn-danger" type="submit"><i class='fa fa-check'></i> REJECT</button>
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
              <a href="?hide_Activity_pop=false" onclick="Databar('ActivityPOPUP')" class="btn btn-success btn-sm" style="border-radius:2rem !important;">Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div>
        </div>
      </div>
    </div>
  </section>
<?php }
?>