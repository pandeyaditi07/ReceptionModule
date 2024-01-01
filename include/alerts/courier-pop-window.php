<?php
// $CheckCourier = CHECK("SELECT reception_courier_status, reception_courier_user_main_id FROM reception_courier where reception_courier_status= '1'  and reception_courier_user_main_id='" . LOGIN_UserId . "'"); 
$CheckCourier = CHECK("SELECT * FROM reception_courier as rc inner join users u  where reception_courier_status= '1'  and reception_courier_user_main_id='" . LOGIN_UserId . "'"); 
if ($CheckCourier != null) {
  if (isset($_GET['hide_Courier_pop'])) {
    $_SESSION['hide_Courier_pop'] = "none";
    $CourierDisplay = "none";
  } else {
    if (isset($_SESSION['hide_Courier_pop'])) {
      $CourierDisplay  = $_SESSION['hide_Courier_pop'];
    } else {
      $CourierDisplay  = "block";
    }
  }
?>
  <section class="follow-up-reminder" id='CourierPOPUP'style="display:<?php echo   $CourierDisplay; ?>;"> 
    <div class="reminder-box w-100">
      <div class="container">
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>Courier Received</h5> 
            </div>
            <div class="row" style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              // die("SELECT d.UserFullName, d.UserPhoneNumber, d.UserEmailId, u.reception_courier_created_at, u.reception_courier_id FROM users d INNER JOIN reception_courier u  On d.UserId  = u.reception_courier_id  where reception_courier_status = '0' and reception_courier_user_main_id='" . LOGIN_UserId . "'  ORDER BY reception_courier_id DESC", true"); 
           
              $AllVisitors = _DB_COMMAND_("SELECT * FROM reception_courier as rc inner join users u where reception_courier_status ='1' and reception_courier_user_main_id='" . LOGIN_UserId . "'  ORDER BY reception_courier_id DESC", true); 
              if ($AllVisitors != null) {
                $SerialNo = 0;
                foreach($AllVisitors as $Visitor) {  
                  $SerialNo++;
              ?>
                  <div class="col-md-6">
                    <div class="shadow-sm bg-white p-2">
                      <div class="flex-s-b">
                        <div class="w-pr-100 shadow-sm p-2 m-1"> 
                        <h6 class='app-sub-heading fs-15'><?php echo  GetUserData($Visitor->reception_courier_user_main_id, "UserFullName"); ?></h6> 
                          <h6 class='app-sub-heading fs-15'><?php echo  GetUserData($Visitor->reception_courier_user_main_id, "UserEmailId"); ?></h6> 
                          <span class="w-100">
                     <span class="p-1 m-t-10"><i class="fa fa-phone text-success"></i> <?php echo GetUserData($Visitor->reception_courier_user_main_id, "UserPhoneNumber"); ?></span><br>  
                            <i class="text-secondary italic pull-right"><?php echo  DATE_FORMATES("d M, Y", $Visitor->reception_courier_created_at); ?></i>
                          </span><br>
                        
                          <hr class="mt-1 mb-2">
                          <div class="flex-s-b">
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_courier_id" => $Visitor->reception_courier_id
                              ]) ?>
                              <button name="ApproveCourierRequest" class="btn btn-xs btn-success" type="submit"><i class='fa fa-check'></i> APPROVE</button>
                            </form>
                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                              <?php FormPrimaryInputs(true, [
                                "reception_courier_id" => $Visitor->reception_courier_id
                              ]) ?>
                              <button name="RejectCourierRequest" class="btn btn-xs btn-danger" type="submit"><i class='fa fa-check'></i> REJECT</button>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
              <?php
                }
              } else {
                NoData("No Courier Found!"); 
              } ?>
            </div>
            <div class='col-md-12 mt-4 text-center'>
              <a href="?hide_Courier_pop=false" onclick="Databar('CourierPOPUP')" class="btn btn-success btn-sm" style="border-radius:2rem !important;">Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div> 
        </div>
      </div>
    </div>
  </section>
<?php }
?>