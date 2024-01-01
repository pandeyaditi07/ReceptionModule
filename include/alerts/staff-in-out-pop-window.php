<?php
$CheckStaffInOut = CHECK("SELECT user_in_out_status, user_main_id FROM user_in_out where user_in_out_status='1' and user_main_id='" . LOGIN_UserId . "'");
if ($CheckStaffInOut != null) {
  if (isset($_GET['hide_staff_in_out_pop'])) {
    $_SESSION['hide_staff_in_out_pop'] = "none"; 
    $StaffInOutDisplay = "none";
  } else {
    if (isset($_SESSION['hide_staff_in_out_pop'])) { 
      $StaffInOutDisplay = $_SESSION['hide_staff_in_out_pop'];
    } else {
      $StaffInOutDisplay = "block";
    }
  }
?>
  <section class="follow-up-reminder" id='StaffInOutPOPUP' style="display:<?php echo  $StaffInOutDisplay; ?>;">
    <div class="reminder-box w-100">
      <div class="container">
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>Staff In Out Received</h5>
            </div>
            <div class="row" style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              $AllVisitors = _DB_COMMAND_("SELECT * from user_in_out where user_in_out_status = '1' and user_main_id= '" . LOGIN_UserId . "' ORDER BY user_in_out_id DESC", true);
              if ($AllVisitors != null) {
                $SerialNo = 0;
                foreach ($AllVisitors as $Visitor) {
                  $SerialNo++;
              ?>
                  <div class="col-md-6">
                    <div class="shadow-sm bg-white p-2">
                      <div class="flex-s-b">
                        <div class="w-pr-100 shadow-sm p-2 m-1">
                          <h6 class='app-sub-heading fs-15'><?php echo GetUserData($Visitor->user_main_id, "UserFullName"); ?></h6> 
                          <span class="w-100">
                         <span class="p-1 m-t-10"><i class="fa fa-phone text-success"></i><?php echo GetUserData($Visitor->user_main_id, "UserPhoneNumber"); ?></span> <br>
                         <span><i class="text-secondary fa fa-envelope"></i><?php echo GetUserData($Visitor->user_main_id, "UserEmailId"); ?>
                          </span><br>
                          <span class="p-1 m-t-10"><i class=" text-success"></i><?php echo $Visitor->user_in_time ?></span><br> 
                          <span class="p-1 m-t-10"><i class=" text-success"></i><?php echo $Visitor->user_out_time ?></span><br>
                          <span class="p-1"><i class="text-danger"></i><?php echo DATE_FORMATES("d M, Y", $Visitor->user_in_out_created_at) ?></span> 
                          <hr class="mt-1 mb-2">
                          <div class="flex-s-b">
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "user_in_out_id" => $Visitor->user_in_out_id
                              ]) ?>
                              <button name="ApproveStaffInOutRequest" class="btn btn-xs btn-success" type="submit"><i class='fa fa-check'></i> APPROVE</button>
                            </form>
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "user_in_out_id" => $Visitor->user_in_out_id
                              ]) ?>
                              <button name="RejectStaffInOutRequest" class="btn btn-xs btn-danger" type="submit"><i class='fa fa-check'></i> REJECT</button>
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
              <a href="?hide_staff_in_out_pop=false" onclick="Databar('StaffInOutPOPUP')" class="btn btn-success btn-sm" style="border-radius:2rem !important;">Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div>
        </div>
      </div>
    </div>
  </section>
<?php }
?>