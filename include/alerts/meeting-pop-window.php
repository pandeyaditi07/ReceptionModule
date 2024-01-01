<?php
$CheckMeeting = CHECK("SELECT reception_meeting_status, reception_meeting_user_main_id FROM reception_meeting where reception_meeting_status='NEW' and reception_meeting_user_main_id='" . LOGIN_UserId . "'");
if ($CheckMeeting  != null) {
  if (isset($_GET['hide_Meeting_pop'])) { 
    $_SESSION['hide_Meeting_pop'] = "none";
    $MeetingDisplay = "none";
  } else {
    if (isset($_SESSION['hide_Meeting_pop'])) {
      $MeetingDisplay = $_SESSION['hide_Meeting_pop']; 
    } else { 
      $MeetingDisplay  = "block";   
    }
  }
?>
  <section class="follow-up-reminder" id='MeetingPOPUP' style="display:<?php echo   $MeetingDisplay;  ?>;">
    <div class="reminder-box w-100">
      <div class="container">
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>Meeting Received</h5> 
            </div>
            <div class="row" style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              $AllVisitors = _DB_COMMAND_("SELECT * FROM reception_meeting where reception_meeting_status = 'pending' and reception_meeting_user_main_id='" . LOGIN_UserId . "' ORDER BY reception_meeting_id DESC", true);
              if ($AllVisitors != null) {
                $SerialNo = 0;
                foreach ($AllVisitors as $Visitor) {  
                  $SerialNo++;
              ?>
                  <div class="col-md-6">
                    <div class="shadow-sm bg-white p-2">
                      <div class="flex-s-b">
                        <div class="w-pr-100 shadow-sm p-2 m-1">
                          <h6 class='app-sub-heading fs-15'><?php echo $Visitor->reception_meeting_customer_name; ?></h6>
                          <span class="w-100">
                            <i class="text-primary italic pull-left"><i class="fa fa-hashtag"></i> <?php echo $Visitor->recption_meeting_customer_mobile; ?></i>
                            
                            <i class="text-secondary italic pull-right"><?php echo DATE_FORMATES("d M, Y", $Visitor->reception_meeting_created_at); ?></i>
                          </span><br>
                          <span class="p-1 m-t-10"><i class="fa fa-phone text-success"></i> <?php echo $Visitor->reception_meeting_in_time; ?></span><br>
                          <span class="p-1"><i class="fa fa-envelope text-danger"></i> <?php echo $Visitor->reception_meeting_out_time; ?></span>
                          <hr class="mt-1 mb-2">
                          <div class="flex-s-b">
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_meeting_id" => $Visitor->reception_meeting_id
                              ]) ?>
                              <button name="ApproveMeetingRequest" class="btn btn-xs btn-success" type="submit"><i class='fa fa-check'></i> APPROVE</button>
                            </form>
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_meeting_id" => $Visitor->reception_meeting_id
                              ]) ?>
                              <button name="RejectMeetingRequest" class="btn btn-xs btn-danger" type="submit"><i class='fa fa-check'></i> REJECT</button>
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
              <a href="?hide_Meeting_pop=false" onclick="Databar('MeetingPOPUP')" class="btn btn-success btn-sm" style="border-radius:2rem !important;">Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div>
        </div>
      </div>
    </div>
  </section>
<?php }
?>