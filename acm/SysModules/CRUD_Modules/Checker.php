<?php
//Check function
function CHECK($SQL, $die = false)
{
    global $DBConnection;
    $Check = "$SQL";

    //die entry
    if ($die == true) {
        die($Check);
    }
    $Query = mysqli_query(DBConnection, $Check);
    $Count = mysqli_num_rows($Query);
    if ($Count == 0 or $Count == null) {
        return false;
    } else {
        return true;
    }
}
