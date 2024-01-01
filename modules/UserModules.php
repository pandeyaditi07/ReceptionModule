<?php

//Get location name
function UserLocation($UserId)
{
  $UserSql = "SELECT UserEmpLocations FROM user_employment_details where UserMainUserId='$UserId'";
  $CheckUserlocation = CHECK($UserSql);

  if ($CheckUserlocation != null) {
    $GetLocationId = FETCH($UserSql, "UserEmpLocations");
    $GetLocationName = FETCH("SELECT * FROM config_locations where config_location_id='$GetLocationId'", "config_location_name");
    $return = $GetLocationName;
  } else {
    $return = null;
  }

  return $return;
}

//get user empid 
function GetUserEmpid($UserId)
{

  $UserSql = "SELECT UserEmpJoinedId FROM user_employment_details where UserMainUserId='$UserId'";
  $CheckUserlocation = CHECK($UserSql);

  if ($CheckUserlocation != null) {
    $EmpCode = FETCH($UserSql, "UserEmpJoinedId");
    $return = $EmpCode;
  } else {
    $return = null;
  }

  return $return;
}

//function for get User Employement Details
function UserEmpDetails($UserIds, $column_name)
{
  if ($UserIds == null) {
    $FetchValue = FETCH("SELECT $column_name FROM user_employment_details where UserMainUserId='$UserIds'", "$column_name");
  } else {
    $FetchValue = null;
  }
  return $FetchValue;
}

//user details
function UserDetails($UserId)
{
  $AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserId='" . $UserId . "' ORDER BY UserFullName ASC", true);
  if ($AllUsers == null) {
  } else {
    foreach ($AllUsers as $User) {
?>
      <?php echo $User->UserFullName; ?><br>
      <span class="text-gray fs-11">
        <span><?php echo $User->UserPhoneNumber; ?></span><br>
        <span><?php echo $User->UserEmailId; ?></span><br>
        <span>
          <span class="text-gray"><?php echo UserEmpDetails($User->UserId, "UserEmpJoinedId"); ?></span>
        </span>
      </span>
    <?php
    }
  }
}

//user details
function UserDetailsForExport($UserId)
{
  $AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserId='" . $UserId . "' ORDER BY UserFullName ASC", true);
  if ($AllUsers == null) {
    NoData("No Users found!");
  } else {
    foreach ($AllUsers as $User) {
    ?>
      <?php echo $User->UserFullName; ?>(<?php echo UserEmpDetails($User->UserId, "UserEmpJoinedId"); ?>)
    <?php
    }
  }
}


//user image
function GetUserImage($UserId, $default = false)
{
  $UserProfileImage = FETCH("SELECT UserProfileImage FROM users where UserId='$UserId'", "UserProfileImage");
  if ($UserProfileImage == "default.png") {
    $UserProfileImg = STORAGE_URL_D . "/default.png";
  } else {
    $FilePath = DOMAIN . "/storage/<?php echo APP_URL;?>/users" . $UserId . "/img/" . $UserProfileImage;
    if (file_exists($FilePath)) {
      $UserProfileImg = STORAGE_URL_U . "/" . $UserId . "/img/" . $UserProfileImage;
    } else {
      UPDATE("UPDATE users SET UserProfileImage='default.png' where UserId='$UserId'");
      $UserProfileImage = FETCH("SELECT UserProfileImage FROM users where UserId='$UserId'", "UserProfileImage");
      $UserProfileImg = STORAGE_URL_U . "/" . $UserId . "/img/" . $UserProfileImage;
    }
  }

  //load default image
  if ($default == true) {
    $UserProfileImg = STORAGE_URL_D . "/default.png";
  }

  //return results
  return $UserProfileImg;
}

//user details
function GetUserDetails($UserId)
{
  $AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserId='" . $UserId . "' ORDER BY UserFullName ASC", true);
  if ($AllUsers == null) {
    NoData("No Users found!");
  } else {
    foreach ($AllUsers as $User) {
    ?>
      <label for="UserId34_<?php echo $User->UserId; ?>" class='record-data-65 m-b-3'>
        <div class="flex-s-b">
          <div class="w-pr-25">
            <img src="<?php echo GetUserImage($User->UserId); ?>" class="img-fluid">
          </div>
          <div class="text-left w-pr-75 pl-2">
            <p class="mt-0">
              <b class="h5 mt-0 m-t-0" style='font-weight:600 !important;'><?php echo $User->UserFullName; ?></b><br>
              <span class="text-gray" style='font-weight:400 !important;'>
                <span><?php echo $User->UserPhoneNumber; ?></span><br>
                <span><?php echo $User->UserEmailId; ?></span><br>
                <span>
                  <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $User->UserId . "'"); ?></span>
                  (<span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $User->UserId  . "'"); ?></span>)
                  @
                  <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $User->UserId  . "'"); ?></span>
                  <span class="text-gray">
                    <br> <span class="text-gray"><?php echo UserLocation($User->UserId); ?></span>
                  </span>
                </span>
              </span>
            </p>
          </div>
        </div>
      </label>
<?php
    }
  }
}

//app users
function GetUserData($UserId, $require)
{
  if (empty($UserId)) {
    return null;
  } else {
    $CheckUsers = CHECK("SELECT $require FROM users where UserId='$UserId'");
    if ($CheckUsers == null) {
      return null;
    } else {
      $GetData = FETCH("SELECT $require FROM users where UserId='$UserId'", "$require");
      if ($require == "UserProfileImage") {
        if ($GetData == "user.png") {
          return STORAGE_URL_D . "/default.png";
        } else {
          return STORAGE_URL_U . "/$UserId/img/$GetData";
        }
      } else {
        return $GetData;
      }
    }
  }
}


//select users
function SelectUserOptions($SelectInputName, $default = LOGIN_UserId)
{
  $SelectOptions = "";
  $SelectOptions .= '<select class="form-control" name="' . $SelectInputName . '">';

  $Users = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
  foreach ($Users as $User) {
    if ($User->UserId == IfRequested("GET", "$SelectInputName", $default, false)) {
      $selected = "selected";
    } else {
      $selected = "";
    }
    $SelectOptions .= "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . " - " . FETCH("SELECT * FROM user_employment_details where UserMainUserId='" . $User->UserId . "'", "UserEmpGroupName") . "</option>";
  }
  $SelectOptions .= '</select>';

  return $SelectOptions;
}
