<?php
//start request processing
if (isset($_POST['CreateVisit'])) {

  $Visitors = [
    "VisitorPersonName" => SECURE($_POST['VisitorPersonName'], "d"),
    "VisitorPersonPhone" => SECURE($_POST['VisitorPersonPhone'], "d"),
    "VisitorPersonEmailId" => SECURE($_POST['VisitorPersonEmailId'], "d"),
    "VisitPurpose" => SECURE($_POST['VisitPurpose'], "d"),
    "VisitPesonMeetWith" => $_POST['VisitPesonMeetWith'],
    "VisitPersonType" => SECURE($_POST['VISITOR_TYPES'], "d"),
    "VisitPeronsDescription" => $_POST['VisitPeronsDescription'],
    "VisitPersonCreatedAt" => CURRENT_DATE_TIME,
    "VisitPersonUpdatedAt" => CURRENT_DATE_TIME,
    "VisitEnquiryStatus" => "NEW",
    "VisitEntryCreatedBy" => LOGIN_UserId
  ];

  $Response = INSERT("visitors", $Visitors);
  if ($Response == true) {
    $VisitorPersonEmailId = SECURE($_POST['VisitorPersonEmailId'], "d");
    if ($VisitorPersonEmailId != null) {
      $Subject = "Thanks for your visit @ " . APP_NAME;
      $Title = "Dear " . SECURE($_POST['VisitorPersonName'], "d");
      $MSG = "I wanted to express my sincere thanks for visiting <b>" . APP_NAME . "</b>. Your visit is important to us, and we appreciate the opportunity to connect with you. If you have any feedback or questions about your visit, please don't hesitate to reach out. We're here to assist you. Thank you again, and we hope to see you back soon.";
      SENDMAILS($Subject, $Title, $VisitorPersonEmailId, $MSG);
    }
    $access_url = APP_URL . "/rec/thanks.php";
  }
  RESPONSE($Response, "Visitor Record saved successfully!", "Unable to save visitor record at the moment!");

  //create manual entry of visitors
} elseif (isset($_POST['CreateVisit2'])) {
  $Visitors = [
    "VisitorPersonName" => $_POST['VisitorPersonName'],
    "VisitorPersonPhone" => $_POST['VisitorPersonPhone'],
    "VisitorPersonEmailId" => $_POST['VisitorPersonEmailId'],
    "VisitPurpose" => $_POST['VisitPurpose'],
    "VisitPesonMeetWith" => $_POST['VisitPesonMeetWith'],
    "VisitPersonType" => $_POST['VISITOR_TYPES'],
    "VisitPeronsDescription" => SECURE($_POST['VisitPeronsDescription'], "e"),
    "VisitPersonCreatedAt" => CURRENT_DATE_TIME,
    "VisitPersonUpdatedAt" => CURRENT_DATE_TIME,
    "VisitEnquiryStatus" => "NEW",
    "VisitEntryCreatedBy" => LOGIN_UserId
  ];

  $Response = INSERT("visitors", $Visitors);
  if ($Response == true) {
    $VisitorPersonEmailId = $_POST['VisitorPersonEmailId'];
    if ($VisitorPersonEmailId != null) {
      $Subject = "Thanks for your visit @ " . APP_NAME;
      $Title = "Dear " . $_POST['VisitorPersonName'];
      $MSG = "I wanted to express my sincere thanks for visiting <b>" . APP_NAME . "</b>. Your visit is important to us, and we appreciate the opportunity to connect with you. If you have any feedback or questions about your visit, please don't hesitate to reach out. We're here to assist you. Thank you again, and we hope to see you back soon.";
      SENDMAILS($Subject, $Title, $VisitorPersonEmailId, $MSG);
    }
  }
  RESPONSE($Response, "Visitor Record saved successfully!", "Unable to save visitor record at the moment!");

  //update visitor record
} elseif (isset($_POST['UpdateVisit'])) {
  $VisitorId = SECURE($_POST['VisitorId'], "d");
  $Visitors = [
    "VisitorPersonName" => $_POST['VisitorPersonName'],
    "VisitorPersonPhone" => $_POST['VisitorPersonPhone'],
    "VisitorPersonEmailId" => $_POST['VisitorPersonEmailId'],
    "VisitPurpose" => $_POST['VisitPurpose'],
    "VisitPesonMeetWith" => GetNumbers($_POST['VisitPesonMeetWith']),
    "VisitPersonType" => $_POST['VisitPersonType'],
    "VisitPeronsDescription" => SECURE($_POST['VisitPeronsDescription'], "e"),
    "VisitPersonUpdatedAt" => CURRENT_DATE_TIME,
    "VisitEnquiryStatus" => $_POST['VisitEnquiryStatus'],
    "VisitEntryCreatedBy" => LOGIN_UserId,
    "VisitorOutTime" => $_POST['VisitorOutTime'],
  ];

  $Response = UPDATE_DATA("visitors", $Visitors, "VisitorId='$VisitorId'");
  RESPONSE($Response, "Visitor Record updated successfully!", "Unable to update visitor record at the moment!");

  //approve visitor logs
} elseif (isset($_POST['ApproveVisitorRequest'])) {
  $VisitorId = SECURE($_POST['VisitorId'], "d");
  $Visitors = [
    "VisitEnquiryStatus" => "APPROVED",
  ];
  $Response = UPDATE_DATA("visitors", $Visitors, "VisitorId='$VisitorId'");
  RESPONSE($Response, "Visitor Entry Approved successfully!", "Unable to approve visitor entry at the moment!");

  //reject visitor entry
} elseif (isset($_POST['RejectVisitorRequest'])) {
  $VisitorId = SECURE($_POST['VisitorId'], "d");
  $Visitors = [
    "VisitEnquiryStatus" => "REJECTED",
  ];
  $Response = UPDATE_DATA("visitors", $Visitors, "VisitorId='$VisitorId'");
  RESPONSE($Response, "Visitor Entry Rejected successfully!", "Unable to rejected visitor entry at the moment!");
//Staff-In-OUT
}elseif(isset($_POST['CreateStaffInOut'])){ 

  $user_in_out = [
    "user_main_id" => $_POST['user_main_id'], 
    "user_out_time" => $_POST['user_out_time'], 
    "user_in_time" => $_POST['user_in_time'],
    "user_in_out_status" => $_POST['user_in_out_status'], 
    "user_in_out_remarks" => SECURE($_POST['user_in_out_remarks'], "e"),
    "user_in_out_approved_by" => "",
    "user_in_out_created_by" => LOGIN_UserId,
    "user_in_out_updated_by" => LOGIN_UserId, 
    "user_in_out_created_at" => CURRENT_DATE_TIME, 
    "user_in_out_updated_at" => CURRENT_DATE_TIME,
    "user_in_out_date"=> CURRENT_DATE
  ]; 

  $Response = INSERT("user_in_out", $user_in_out);
  RESPONSE($Response, "Staff In Details Saved Successfully!","Unable To Save Staff In Out Entry");  
  // meeting 
} 


 elseif(isset($_POST['CreateMeeting'])){ 
  $reception_meeting = [ 
    "reception_meeting_user_main_id" => $_POST['reception_meeting_user_main_id'], 
    "reception_meeting_date" => $_POST['reception_meeting_date'], 
    "reception_Category" => $_POST['reception_Category'], 
    "reception_meeting_associate_name" => $_POST['reception_meeting_associate_name'], 
    "reception_meeting_associate_mob_no" => $_POST['reception_meeting_associate_mob_no'], 
    "reception_meeting_select_project" => $_POST['reception_meeting_select_project'], 
    "reception_meeting_descrp_of_meeting" => $_POST['reception_meeting_descrp_of_meeting'], 
    "reception_meeting_customer_name" => $_POST['reception_meeting_customer_name'], 
    "recption_meeting_customer_mobile" => $_POST['recption_meeting_customer_mobile'], 
    "reception_meeting_customer_address" => $_POST['reception_meeting_customer_address'], 
    "reception_meeting_city" => $_POST['reception_meeting_city'], 
    "reception_meeting_state" => $_POST['reception_meeting_state'], 
    "recption_meeting_pincode" => $_POST['recption_meeting_pincode'], 
    "reception_meeting_out_time" => $_POST['reception_meeting_out_time'], 
    "reception_meeting_in_time" => $_POST['reception_meeting_in_time'], 
    "reception_meeting_status" => $_POST['reception_meeting_status'], 
    "reception_meeting_note_remark" => SECURE($_POST['reception_meeting_note_remark'], "e"), 
    "reception_meeting_created_at" => CURRENT_DATE_TIME, 
    "reception_meeting_updated_at" => CURRENT_DATE_TIME, 
    "reception_meeting_created_by" => LOGIN_UserId, 
    "reception_meeting_updated_by" => LOGIN_UserId 
  ];  

  $Response = INSERT("reception_meeting",  $reception_meeting); 
  RESPONSE($Response, "Meeting Details Saved Successfully!" , "Unable to Save Meeting Entry"); 
  // Activity
}   


elseif(isset($_POST['CreateActivity'])){ 
  $reception_activity = [ 
    "reception_activity_user_main_id" => $_POST['reception_activity_user_main_id'], 
    "reception_activity_type_of_activity" => $_POST['reception_activity_type_of_activity'], 
    "reception_activity_place_of_activity_number" => $_POST['reception_activity_place_of_activity_number'], 
    "reception_activity_customer_email_id" => $_POST['reception_activity_customer_email_id'], 
    "reception_activity_customer_name" => $_POST['reception_activity_customer_name'], 
    "reception_activity_customer_mobile" => $_POST['reception_activity_customer_mobile'], 
    "reception_activity_customer_address" => $_POST['reception_activity_customer_address'], 
    "reception_activity_out_time" => $_POST['reception_activity_out_time'], 
    "reception_activity_in_time" => $_POST['reception_activity_in_time'], 
    "reception_activity_city" => $_POST['reception_activity_city'], 
    "reception_activity_state" => $_POST['reception_activity_state'], 
    "reception_activity_pincode" => $_POST['reception_activity_pincode'], 
    "reception_activity_status" => $_POST['reception_activity_status'], 
    "reception_activity_note_remark" => SECURE($_POST['reception_activity_note_remark'], "e"), 
    "reception_activity_created_at" => CURRENT_DATE_TIME, 
    "reception_activity_updated_at" => CURRENT_DATE_TIME, 
    "reception_activity_created_by" => LOGIN_UserId, 
    "reception_activity_updated_by" => LOGIN_UserId 
  ]; 

  $Response = INSERT("reception_activity" , $reception_activity); 
  RESPONSE($Response, "Activity Details Saved Successfully!" , "Unable To save Activity Details"); 
  // courier
} 

elseif(isset($_POST['CreateCourier'])){ 
  $reception_courier = [
    "reception_courier_user_main_id" => $_POST['reception_courier_user_main_id'], 
    "reception_courier_name_of_party" => $_POST['reception_courier_name_of_party'], 
    "reception_courier_party_contact_number" => $_POST['reception_courier_party_contact_number'], 
    "reception_courier_date" => $_POST['reception_courier_date'], 
    "reception_courier_party_address" => $_POST['reception_courier_party_address'], 
    "reception_courier_city" => $_POST['reception_courier_city'], 
    "reception_courier_state" => $_POST['reception_courier_state'], 
    "reception_courier_pincode" => $_POST['reception_courier_pincode'], 
    "reception_courier_sender_name" => $_POST['reception_courier_sender_name'], 
    "reception_courier_sender_contact_number" => $_POST['reception_courier_sender_contact_number'], 
    "reception_courier_name" => $_POST['reception_courier_name'], 
    "reception_courier_tracking_number" => $_POST['reception_courier_tracking_number'], 
    "reception_courier_item_details" => $_POST['reception_courier_item_details'], 
    "reception_courier_receipt_received" => $_POST['reception_courier_receipt_received'], 
    "reception_courier_scan_hard_copy" =>  UPLOAD_FILES("../storage/courier", null, "corier_receipts", "reception_courier_scan_hard_copy"), 
    "reception_courier_status" => $_POST['reception_courier_status'], 
    "reception_courier_returned_date" => $_POST['reception_courier_returned_date'], 
    "reception_courier_returned_reason" => $_POST['reception_courier_returned_reason'], 
    "reception_courier_note_remark" => SECURE($_POST['reception_courier_note_remark'], "e"), 
    "reception_courier_created_at" => CURRENT_DATE_TIME, 
    "reception_courier_updated_at" => CURRENT_DATE_TIME, 
    "reception_courier_created_by" => LOGIN_UserId, 
    "reception_courier_updated_by" => LOGIN_UserId 
  ]; 

  $Response = INSERT("reception_courier" ,   $reception_courier); 
  RESPONSE($Response, "Courier Details Saved Successfilly!", "Unable To Save Courier Details"); 
  // sitevisit 
} 

elseif(isset($_POST['CreateSiteVisit'])){ 
  $reception_sitevisit = [
    "reception_sitevisit_user_main_id" => $_POST['reception_sitevisit_user_main_id'], 
    "reception_sitevisit_project_to_visit" => $_POST['reception_sitevisit_project_to_visit'], 
    "reception_sitevisit_booking_date" => $_POST['reception_sitevisit_booking_date'], 
    "reception_sitevisit_associate_name" => $_POST['reception_sitevisit_associate_name'], 
    "reception_sitevisit_associate_mobile_number" => $_POST['reception_sitevisit_associate_mobile_number'], 
    "reception_sitevisit_customer_name" => $_POST['reception_sitevisit_customer_name'], 
    "reception_sitevisit_customer_mobile_number" => $_POST['reception_sitevisit_customer_mobile_number'], 
    "reception_sitevisit_approved_by" => $_POST['reception_sitevisit_approved_by'], 
    "reception_sitevisit_vendor_firm_name" => $_POST['reception_sitevisit_vendor_firm_name'], 
    "reception_sitevisit_driver_name" => $_POST['reception_sitevisit_driver_name'], 
    "reception_sitevisit_cab_number" => $_POST['reception_sitevisit_cab_number'], 
    "reception_sitevisit_type_of_vehicle" => $_POST['reception_sitevisit_type_of_vehicle'], 
    "reception_sitevisit_open_km" => $_POST['reception_sitevisit_open_km'], 
    "reception_sitevisit_close_km" => $_POST['reception_sitevisit_close_km'], 
    "reception_sitevisit_total_km" => $_POST['reception_sitevisit_total_km'], 
    "reception_sitevisit_in_time" => $_POST['reception_sitevisit_in_time'], 
    "reception_sitevisit_out_time" => $_POST['reception_sitevisit_out_time'], 
    "reception_sitevisit_total_hours" => $_POST['reception_sitevisit_total_hours'], 
    "reception_sitevisit_status" => $_POST['reception_sitevisit_status'], 
    "reception_sitevisit_note_remark" => $_POST['reception_sitevisit_note_remark'], 
    "reception_sitevisit_created_at" => CURRENT_DATE_TIME, 
    "reception_sitevisit_updated_at" => CURRENT_DATE_TIME, 
    "reception_sitevisit_created_by" => LOGIN_UserId, 
    "reception_sitevisit_updated_by" => LOGIN_UserId 
  ]; 

  $Response = INSERT("reception_sitevisit",   $reception_sitevisit); 
  RESPONSE($Response , "SIte Visit Details Saved SuccessFully!" , "Unable To Save Site Visit Details"); 
//update staff in out: 

}elseif(isset($_POST['UpdateStaffInOut'])){
  $user_in_out_id = SECURE($_POST['user_in_out_id'], "d"); 
  $user_in_out = [
    "user_main_id" => $_POST['user_main_id'], 
    "user_out_time" => $_POST['user_out_time'], 
    "user_in_time" => $_POST['user_in_time'],
    "user_in_out_status" => $_POST['user_in_out_status'], 
    "user_in_out_remarks" => SECURE($_POST['user_in_out_remarks'], "e"),
    "user_in_out_updated_by" => LOGIN_UserId, 
    "user_in_out_updated_at" => CURRENT_DATE_TIME, 
  ]; 

  $Response = UPDATE_DATA("user_in_out", $user_in_out, "user_in_out_id='$user_in_out_id'");
  RESPONSE($Response, "Staff In Details Updated Successfully!","Unable To Save Updated Staff In Out Entry");  
} 
elseif(isset($_POST['UpdateMeeting'])){ 
  $reception_meeting_id = SECURE($_POST['reception_meeting_id'] , "d"); 

  $reception_meeting = [ 
    "reception_meeting_user_main_id" => $_POST['reception_meeting_user_main_id'], 
    "reception_meeting_date" => $_POST['reception_meeting_date'], 
    "reception_Category" => $_POST['reception_Category'], 
    "reception_meeting_associate_name" => $_POST['reception_meeting_associate_name'], 
    "reception_meeting_associate_mob_no" => $_POST['reception_meeting_associate_mob_no'], 
    "reception_meeting_select_project" => $_POST['reception_meeting_select_project'], 
    "reception_meeting_descrp_of_meeting" => $_POST['reception_meeting_descrp_of_meeting'], 
    "reception_meeting_customer_name" => $_POST['reception_meeting_customer_name'], 
    "recption_meeting_customer_mobile" => $_POST['recption_meeting_customer_mobile'], 
    "reception_meeting_customer_address" => $_POST['reception_meeting_customer_address'], 
    "reception_meeting_city" => $_POST['reception_meeting_city'], 
    "reception_meeting_state" => $_POST['reception_meeting_state'], 
    "recption_meeting_pincode" => $_POST['recption_meeting_pincode'], 
    "reception_meeting_out_time" => $_POST['reception_meeting_out_time'], 
    "reception_meeting_in_time" => $_POST['reception_meeting_in_time'], 
    "reception_meeting_status" => $_POST['reception_meeting_status'], 
    "reception_meeting_note_remark" => SECURE($_POST['reception_meeting_note_remark'], "e"), 
    "reception_meeting_updated_by" => LOGIN_UserId , 
    "reception_meeting_updated_at" => CURRENT_DATE_TIME, 
   
  ]; 

  $Response = UPDATE_DATA("reception_meeting" , $reception_meeting, "reception_meeting_id= '$reception_meeting_id'"); 
  RESPONSE($Response, "Meeting Details Updated Successfully!","Unable To Save Updated Meeting Entry");   
} 
elseif(isset($_POST['UpdateActivity'])){ 
  $reception_activity_id = SECURE($_POST['reception_activity_id'], "d"); 

  $reception_activity = [ 
    "reception_activity_user_main_id" => $_POST['reception_activity_user_main_id'], 
    "reception_activity_type_of_activity" => $_POST['reception_activity_type_of_activity'], 
    "reception_activity_place_of_activity_number" => $_POST['reception_activity_place_of_activity_number'], 
    "reception_activity_customer_email_id" => $_POST['reception_activity_customer_email_id'], 
    "reception_activity_customer_name" => $_POST['reception_activity_customer_name'], 
    "reception_activity_customer_mobile" => $_POST['reception_activity_customer_mobile'], 
    "reception_activity_customer_address" => $_POST['reception_activity_customer_address'], 
    "reception_activity_out_time" => $_POST['reception_activity_out_time'], 
    "reception_activity_in_time" => $_POST['reception_activity_in_time'], 
    "reception_activity_city" => $_POST['reception_activity_city'], 
    "reception_activity_state" => $_POST['reception_activity_state'], 
    "reception_activity_pincode" => $_POST['reception_activity_pincode'], 
    "reception_activity_status" => $_POST['reception_activity_status'], 
    "reception_activity_note_remark" => SECURE($_POST['reception_activity_note_remark'], "e"),   
    "reception_activity_updated_by" => LOGIN_UserId , 
    "reception_activity_updated_at" =>  CURRENT_DATE_TIME, 
    
  ];  
  $Response = UPDATE_DATA("reception_activity", $reception_activity, "reception_activity_id = '$reception_activity_id'"); 
  RESPONSE($Response, "Activity Details Updated Successfully!","Unable To Save Updated Activity Entry");   
}
elseif(isset($_POST['UpdateCourier'])){
  $reception_courier_id = SECURE($_POST['reception_courier_id'], "d"); 

  $reception_courier = [ 
    "reception_courier_user_main_id" => $_POST['reception_courier_user_main_id'], 
    "reception_courier_name_of_party" => $_POST['reception_courier_name_of_party'], 
    "reception_courier_party_contact_number" => $_POST['reception_courier_party_contact_number'], 
    "reception_courier_date" => $_POST['reception_courier_date'], 
    "reception_courier_party_address" => $_POST['reception_courier_party_address'], 
    "reception_courier_city" => $_POST['reception_courier_city'], 
    "reception_courier_state" => $_POST['reception_courier_state'], 
    "reception_courier_pincode" => $_POST['reception_courier_pincode'], 
    "reception_courier_sender_name" => $_POST['reception_courier_sender_name'], 
    "reception_courier_sender_contact_number" => $_POST['reception_courier_sender_contact_number'], 
    "reception_courier_name" => $_POST['reception_courier_name'], 
    "reception_courier_tracking_number" => $_POST['reception_courier_tracking_number'], 
    "reception_courier_item_details" => $_POST['reception_courier_item_details'], 
    "reception_courier_receipt_received" => $_POST['reception_courier_receipt_received'], 
    "reception_courier_scan_hard_copy" =>  UPLOAD_FILES("../storage/courier", null, "corier_receipts", "reception_courier_scan_hard_copy"), 
    "reception_courier_status" => $_POST['reception_courier_status'], 
    "reception_courier_returned_date" => $_POST['reception_courier_returned_date'], 
    "reception_courier_returned_reason" => $_POST['reception_courier_returned_reason'], 
    "reception_courier_note_remark" => SECURE($_POST['reception_courier_note_remark'], "e"), 
    "reception_courier_updated_by" => LOGIN_UserId,  
    "reception_courier_updated_at" => CURRENT_DATE_TIME, 
  ];  
  $Response = UPDATE_DATA("reception_courier" , $reception_courier, "reception_courier_id = '$reception_courier_id'" ); 
  RESPONSE($Response, "Courier Details Updated Successfully!","Unable To Save Updated Courier Entry");   
} 
elseif(isset($_POST['UpdateSiteVisit'])){
  $reception_sitevisit_id = SECURE($_POST['reception_sitevisit_id'], "d"); 

  $reception_sitevisit = [ 
    "reception_sitevisit_user_main_id" => $_POST['reception_sitevisit_user_main_id'], 
    "reception_sitevisit_project_to_visit" => $_POST['reception_sitevisit_project_to_visit'], 
    "reception_sitevisit_booking_date" => $_POST['reception_sitevisit_booking_date'], 
    "reception_sitevisit_associate_name" => $_POST['reception_sitevisit_associate_name'], 
    "reception_sitevisit_associate_mobile_number" => $_POST['reception_sitevisit_associate_mobile_number'], 
    "reception_sitevisit_customer_name" => $_POST['reception_sitevisit_customer_name'], 
    "reception_sitevisit_customer_mobile_number" => $_POST['reception_sitevisit_customer_mobile_number'], 
    "reception_sitevisit_approved_by" => $_POST['reception_sitevisit_approved_by'], 
    "reception_sitevisit_vendor_firm_name" => $_POST['reception_sitevisit_vendor_firm_name'], 
    "reception_sitevisit_driver_name" => $_POST['reception_sitevisit_driver_name'], 
    "reception_sitevisit_cab_number" => $_POST['reception_sitevisit_cab_number'], 
    "reception_sitevisit_type_of_vehicle" => $_POST['reception_sitevisit_type_of_vehicle'], 
    "reception_sitevisit_open_km" => $_POST['reception_sitevisit_open_km'], 
    "reception_sitevisit_close_km" => $_POST['reception_sitevisit_close_km'], 
    "reception_sitevisit_total_km" => $_POST['reception_sitevisit_total_km'], 
    "reception_sitevisit_in_time" => $_POST['reception_sitevisit_in_time'], 
    "reception_sitevisit_out_time" => $_POST['reception_sitevisit_out_time'], 
    "reception_sitevisit_total_hours" => $_POST['reception_sitevisit_total_hours'], 
    "reception_sitevisit_status" => $_POST['reception_sitevisit_status'], 
    "reception_sitevisit_note_remark" => $_POST['reception_sitevisit_note_remark'], 
    "reception_sitevisit_updated_by" => LOGIN_UserId , 
    "reception_sitevisit_updated_at" => CURRENT_DATE_TIME, 
     
  ]; 
  $Response = UPDATE_DATA("reception_sitevisit", $reception_sitevisit, "reception_sitevisit_id = '$reception_sitevisit_id'"); 
  RESPONSE($Response, "SiteVisit Details Updated Successfully!","Unable To Save Updated SiteVisit Entry");   

}