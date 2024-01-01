<?php
function StaffInoutstatus($data)
{
    if ($data == 0) {
        return "Waiting";
    } else {
        return "In-Office";
    }
}




// function CourierStatus($data)  
// {
//     if ($data == 0) {
//         return "Pending";
//     } else {
//         return "Delivered";
//         } 
// } 


function meeting($data)
{
    if ($data == 1) {
        return "Meeting";
    } else {
        return "Compleated";
    }
}

function courier($data)
{
    if ($data == 1) {
        return "Pending";
    } else {
        return "Completed";
    }
}

function activity($data)
{
    if ($data == 1) {
        return "Pending";
    } else {
        return "Completed";
    }
}

function SiteVisit($data)
{
    if ($data == 1) {
        return "Pending";
    } else {
        return "Completed";
    }
}




define("StatesName", [
    "Andaman and Nicobar Islands",
    "Andhra Pradesh", "Arunachal Pradesh",
    "Assam", "Bihar", "Chandigarh", "Chhattisgarh", "Dadra and Nagar Haveli and Daman and Diu", "Goa", "Gujurat", "Haryana",  "Himachal Pradesh",   "Jammu and Kashmir",  "Jharkhand", "Karnataka",  "Kerela",  "Ladakh", "Lakshadweep", "Madhya Pradesh", "Maharashtra",  "Manipur",  "Meghalaya",  "Mizoram", "Nagaland", "NCT of Delhi", "Odisha", "Puducherry",  "Punjab",   "Rajasthan",   "Sikkim",  "Tamil Nadu",  "Telangana",  "Tripura",  "Uttarakhand", "Uttar Pradesh", "West Bengal"
]);
