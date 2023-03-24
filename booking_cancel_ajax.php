<?php
  $id = $_GET['id'];
error_reporting(0);


$link = mysqli_connect("localhost", "root", "", "go_travel");
$content ;
if (mysqli_connect_errno()) {
    $status = 'ERROR';
    $content = mysqli_connect_error();
}
$query = "UPDATE `bookings` SET `Canceled`='Yes' WHERE Booking_ID=$id";
$query_run = (mysqli_query($link, $query));

// // $queryw = "UPDATE `launch_seat` SET `userr`='sooha',`pass`=123  WHERE id=$seat";
// // $query_run = (mysqli_query($link, $queryw));

// // $query1 = "SELECT availability,n,id FROM `launch_seat` WHERE id=$seat";
// if ($result = mysqli_query($link, $query1)) {
//     /* fetch associative array */
    
//     while ($row = mysqli_fetch_assoc($result)) {
       
//         $content= $row['id']; // push value to array
//     }
// }
$content=$id;
header('Content-type: application/json');
echo json_encode($content); // get all products in jsonformat.
