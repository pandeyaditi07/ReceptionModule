<?php
//delete
function DELETE_SQL($SQL, $die = false)
{
 $Update = "$SQL";
 //die entry
 if ($die == true) {
  die($Update);
 }
 $Query = mysqli_query(DBConnection, $Update);
 if ($Query == true) {
  return true;
 } else {
  return false;
 }
}

//delete 
function DELETE_FROM($table, $conditions, $die = false)
{
 $Delete = DELETE_SQL("DELETE from $table where $conditions");

 //die entry
 if ($die == true) {
  DELETE_SQL("DELETE from $table where $conditions", true);
  //send response in boolean
 } else {
  if ($Delete == true) {
   return true;
  } else {
   return false;
  }
 }
}
