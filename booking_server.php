<?php
session_start();
include 'db_connect.php';
$name = $_GET['name'];
$bill=$_GET['bill'];
$city=$_GET['city'];
$adult=$_GET['adult'];
$children=$_GET['children'];
$room=$_GET['room'];
$room_type=$_GET['room_type'];
$bed=$_GET['bed'];
$interval =$_GET['interval'];
$check_ins=$_GET['check_ins'];
$check_outs=$_GET['check_outs'];
    $query1= "SELECT * FROM hotel WHERE Name='$name';"; 
      $query_run=(mysqli_query($conn,$query1));
  if($query_run->num_rows>0){
    while($row=$query_run->fetch_assoc()){
    $name=$row['Name'];
    $star=$row['Star'];
    $rating=$row['Rating'];
    $room_available=$row['Room_Available'];
    $price=$row['Price'];
    $features=$row['Features'];
    $reviews=$row['Reviews'];
    $picture=$row['picture'];
    $discount=$row['discount'];
    }
}
$sql = "INSERT INTO `bookings`(`Picture`, `Name`, `City`, `Adult`, 
`Children`, `Room`, `Room Type`, `Bed`, `Stay`, `Bill Due`, `User_Name`, `Check-in`, `Check-out`, `Canceled`) VALUES (' $picture','$name',
'$city','$adult','$children','$room','$room_type','$bed','$interval','$bill','abcd','$check_ins','$check_outs','No')";
$query_run=(mysqli_query($conn,$sql));
if ($query_run) {
    header ("Location: my_booking.php");
}
?>