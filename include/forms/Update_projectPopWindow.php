<section class="pop-section hidden" id="AddSite-VisitPopUp">
  <div class="action-window">
    <div class='container'>
      <div class='row'>
        <div class='col-md-12'>
          <h4 class='app-heading'>Project</h4>
        </div>
      </div>
      <form class="row" action="<?php echo CONTROLLER; ?>" method="POST">
        <?php FormPrimaryInputs(true); ?>
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <h4 class="app-sub-heading">Project</h4>
            </div> 




            <div class='col-md-4 form-group'>
              <label>Project Name <?php echo $req; ?></label>
              <input type="text" name="reception_sitevisit_associate_name" class="form-control ">
            </div> 
            <div class='col-md-4 form-group'>
              <label>Project type <?php echo $req; ?></label>
              <select name="reception_sitevisit_project_to_visit" class='form-control' required>
                <?php
                echo InputOptionsWithKey([
                  "0" => "Dean dayal- Residential Plots",
                  "1" => "Business Assotech - Commercial offices"
                ], "1")
                ?>
              </select>   
            </div>
            <div class='col-md-4 form-group'>
              <label>Start Date <?php echo $req; ?></label>
              <input type="date" name="reception_sitevisit_booking_date" class="form-control " required="">
            </div> 

            <div class='col-md-4 form-group'>
              <label>End Date <?php echo $req; ?></label>
              <input type="date" name="reception_sitevisit_booking_date" class="form-control " required="">
            </div>  

            <div class='col-md-4 form-group'>
              <label>Milestone Date <?php echo $req; ?></label>
              <input type="date" name="reception_sitevisit_booking_date" class="form-control " required="">
            </div>   


         
 
            <div class='col-md-4 form-group'>
              <label>Status: <?php echo $req; ?></label>
              <select name="reception_sitevisit_status" id="Status" class="form-control" value="" placeholder="Status" onchange="hideStatus()">
                <?php
                echo InputOptionsWithKey([
                  "1" => "Pending",
                  "0" => "Completed"
                ], "1");
                ?>
              </select>
            </div>
          
            <div class="form-group col-md-12">
              <label>Project Description <?php echo $req; ?></label>
              <textarea name="reception_sitevisit_note_remark" required="" class="form-control" rows="3"></textarea>
            </div>  

            <div class="form-group col-md-12">
              <label>Add Note & Remarks <?php echo $req; ?></label>
              <textarea name="reception_sitevisit_note_remark" required="" class="form-control" rows="3"></textarea>
            </div>  
            <div class='col-md-12 text-right'>
              <a onclick="Databar('AddSite-VisitPopUp')" class="btn btn-md btn-default mt-3 mr-3">Cancel</a>
              <button type="submit" name="CreateSiteVisit" class='btn btn-md btn-success'>Create project <i class='fa fa-check'></i></button>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <h4 class="app-sub-heading">Meeting With</h4>
          <label>Search Team Member</label>
          <input type="search" name="search" id="searchlist" oninput="SearchData('searchlist', 'record-data-list')" class='form-control' placeholder="Search Team Member">
          <div class='data-display height-limit'>
            <?php
            $AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
            if ($AllUsers == null) {
              NoData("No Users found!");
            } else {
              foreach ($AllUsers as $User) {
            ?>
                <label for="UserId_<?php echo $User->UserId; ?>" class='data-list record-data-list m-b-3'>
                  <div class="flex-s-b">
                    <div class="w-pr-20">
                      <img src="<?php echo GetUserImage($User->UserId); ?>" class="img-fluid">
                    </div>
                    <div class="text-left w-pr-80 p-1">
                      <label class="w-100">
                        <span class="h6 mt-0"><?php echo $User->UserFullName; ?></span><br>
                        <span class="text-gray small">
                          <span><?php echo $User->UserPhoneNumber; ?></span><br>
                          <span><?php echo $User->UserEmailId; ?></span><br>
                          <span>
                            <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $User->UserId . "'"); ?></span>
                            (<span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $User->UserId  . "'"); ?></span>)
                            <br>
                            <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $User->UserId  . "'"); ?></span> -
                            <span class="text-gray"><?php echo UserLocation($User->UserId); ?></span>
                          </span>
                        </span>
                        <input required='' type="radio" id="UserId_<?php echo $User->UserId; ?>" name="reception_sitevisit_user_main_id" class="pull-right" value='<?php echo $User->UserId; ?>'>
                      </label>
                    </div>
                  </div>
                </label>
            <?php
              }
            } ?>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>