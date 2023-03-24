<?php error_reporting (E_ALL ^ E_NOTICE); ?>
<?php
session_start();
$city=$_POST['city'];
$adult=$_POST['adult'];
$children=$_POST['children'];
$room=$_POST['room'];
$room_type=$_POST['room_type'];
$bed=$_POST['bed'];
$interval =$_POST['interval'];
$check_ins=$_POST['check_ins'];
$check_outs=$_POST['check_outs'];
?>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:400,500,600,700%7CPoppins:400%7CTeko:300,400">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <body>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
      
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="106px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
            <div class="rd-navbar-aside-outer">
              <div class="rd-navbar-aside">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="index.html"><img src="images/logo-default-450x37.png" alt="" width="225" height="18"/></a>
                  </div>
                </div>
                <div class="rd-navbar-aside-right rd-navbar-collapse">
                  <ul class="rd-navbar-corporate-contacts">
                    <li>
                      <div class="unit unit-spacing-xs">
                        <div class="unit-left"><span class="icon fa fa-clock-o"></span></div>
                        <div class="unit-body">
                          <p>09:00<span>am</span> — 05:00<span>pm</span></p>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="unit unit-spacing-xs">
                        <div class="unit-left"><span class="icon fa fa-phone"></span></div>
                        <div class="unit-body"><a class="link-phone" href="tel:#">+1 323-913-4688</a></div>
                      </div>
                    </li>
                  </ul><a class="button button-md button-default-outline-2 button-ujarak" href="#">Get a Free Quote</a>
                </div>
              </div>
            </div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <div class="rd-navbar-nav-wrap">
                  <ul class="list-inline list-inline-md rd-navbar-corporate-list-social">
                    <li><a class="icon fa fa-facebook" href="#"></a></li>
                    <li><a class="icon fa fa-twitter" href="#"></a></li>
                    <li><a class="icon fa fa-google-plus" href="#"></a></li>
                    <li><a class="icon fa fa-instagram" href="#"></a></li>
                  </ul>
                  <!-- RD Navbar Nav-->
                  <ul class="rd-navbar-nav">
                    <li class="rd-nav-item active"><a class="rd-nav-link" href="index.html">Home</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="about.html">About</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="typography.html">Typography</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="contact-us.html">Contact Us</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
        <style>
           .button-29 {
  align-items: center;
  appearance: none;
  background-image: radial-gradient(100% 100% at 100% 0, #5adaff 0, #5468ff 100%);
  border: 0;
  border-radius: 6px;
  box-shadow: rgba(45, 35, 66, .4) 0 2px 4px,rgba(45, 35, 66, .3) 0 7px 13px -3px,rgba(58, 65, 111, .5) 0 -3px 0 inset;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-flex;
  font-family: "JetBrains Mono",monospace;
  height: 48px;
  justify-content: center;
  line-height: 1;
  list-style: none;
  overflow: hidden;
  padding-left: 16px;
  padding-right: 16px;
  position: relative;
  text-align: left;
  text-decoration: none;
  transition: box-shadow .15s,transform .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  will-change: box-shadow,transform;
  font-size: 18px;
}

.button-29:focus {
  box-shadow: #3c4fe0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
}

.button-29:hover {
  box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
  transform: translateY(-2px);
}

.button-29:active {  box-shadow: #3c4fe0 0 3px 7px inset;
  transform: translateY(2px);
}
* {
  box-sizing: border-box;
}
.column {
  
  /* float: left; */
}
.left {
  width: 70%;
}
.right {
  width: 30%;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.cards {
    display: flex;
    width: 80%;
    margin-left: 20px;
    flex-direction: column;
}
.card1 {
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    padding:5px;
    border: 1px solid rgb(22, 19, 19);
    text-align: left;
}

            #No_of_hotels{
               font-size:x-large;
               text-align: left;
               margin-left: 50px;
            }
            #hotels{
                
                display: flex;
                flex-direction: column;
            }
            #hotelall{
                display: flex;
                border: 2px solid black;
                margin: 2px 2px 2px 2px;
                width: 90%;
                max-height: 220px;
            }
            #images{
              margin: 5px;
              height: 200px;
              width: 200px;
            }
            #hotel_Name{
              margin-right: 21%;
              text-align: left;
              margin-top: 5px;
              font-size: large;
              font-weight: bold;
              color:dimgrey;
            }
            #Location{
              float: left;
              font-size:small;
              color:#01b3a7;
            }
            #ratings_box{
              margin-top: 5px;
              height: 35px;
              width: 35px;
              border: 5px solid rgb(60, 36, 201);
              border-radius: 10px;
              color:aliceblue;
              background-color:rgb(60, 36, 201);
              text-align: center;
              font-weight: bold;
            }
            #rating{
              
              float:right;
              font-weight: bold;
            }
            #reviews{
              margin-top: 5px;
              font-weight:lighter;
              font-size: smaller;
              text-align: right;
            }
            #qualities{
              float: left;
              color: chocolate;
            }
            #rooms{
              float: left;
              color: firebrick;
            }
            #discount{
              float:left;
              font-weight:bolder;
              font-size: large;
              color:indigo;
            }
            #stay_info{
              margin-right: 1px;
              float:left;
              font-weight:lighter;
              font-size:12px;
            }
            #Taka{
            float: left;
            color: black;
            font-size: xx-large;
            }
           .checked{
             float: left;
             color: orange;
           }
           .heading{
             font-size: large;
           }
        </style>
      </header>
      <div class="row">
<div class="column right">
  <div class = "cards">
    <div class = "card1">
     <b class="heading">Filter By:</b>
    </div>
    <div class = "card1">
      <form action="filterhotels.php" method="POST">
        <p class="heading"><strong>Your Budget(per night)</strong></p>
        <input type="radio" id="Budget1" name="Budget" value="5000">
        <label for="vehicle1"> BDT 0 - BDT 5000</label><br>
        <input type="radio" id="Budget2" name="Budget" value="10000">
        <label for="vehicle2"> BDT 5000 - BDT 10000</label><br>
        <input type="radio" id="Budget3" name="Budget" value="15000">
        <label for="vehicle3"> BDT 10000 - BDT 15000</label><br>
        <input type="radio" id="Budget4" name="Budget" value="100000">
        <label for="vehicle1"> BDT 15000+</label><br>
        <hr>
        <p class="heading"><strong>Star Rating</strong></p>
        <input type="radio" id="Rating2" name="Rating" value="1">
        <label for="vehicle3"> 1 star</label><br>
        <input type="radio" id="Rating3" name="Rating" value="2">
        <label for="vehicle3"> 2 stars</label><br>
        <input type="radio" id="Rating4" name="Rating" value="3">
        <label for="vehicle3"> 3 stars</label><br>
        <input type="radio" id="Rating5" name="Rating" value="4">
        <label for="vehicle3"> 4 stars</label><br>
        <input type="radio" id="Rating6" name="Rating" value="5">
        <label for="vehicle3"> 5 stars</label><br>
        <hr>
        <p class="heading"><strong>Review Score</strong></p>
        <input type="radio" id="score1" name="score" value="9">
        <label for="vehicle3"> Excellent - 9+</label><br>
        <input type="radio" id="score2" name="score" value="8">
        <label for="vehicle3"> Very Good - 8+</label><br>
        <input type="radio" id="score3" name="score" value="7">
        <label for="vehicle3"> Good - 7+</label><br>
        <input type="radio" id="score4" name="score" value="6">
        <label for="vehicle3"> Average - 6+</label><br>
        <hr>
        <p class="heading"><strong>Facilities</strong></p>
        <input type="radio" id="Breakfast" name="Features" value="Breakfast Included">
        <label for="vehicle3"> Breakfast Included</label><br>
        <input type="radio" id="Swimming_pool" name="Features" value="Swimming pool">
        <label for="vehicle3"> Swimming pool</label><br>
        <input type="radio" id="Wifi" name="Features" value="Free WiFi">
        <label for="vehicle3"> Free WiFi</label><br>
        <input type="radio" id="AC" name="Features" value="AC">
        <label for="vehicle3"> Air Conditioning</label><br>
        <input class="button-29" type="submit" name="Submit" value="Submit">
      </form>    
     </div>
</div>
</div>   
<div class="column left"> 
    <?php
    include_once 'db_connect.php';
    if(isset($_POST['Submit'])){
      $count=0;   
    if(!empty($_POST['Budget'])) 
         $budget=$_POST['Budget'];
         else
         $budget=null;
         if(!empty($_POST['Rating'])) 
          $ratings=$_POST['Rating'];
          else 
          $ratings=null;
          if(!empty($_POST['score'])) 
            $score=$_POST['score'];
            else
            $score=null;
            if(!empty($_POST['Features'])) 
              $feature=$_POST['Features'];
              else
              $feature=null;
              if($budget!=null && $ratings!=null && $score!=null && $feature!=null){
                $query1="SELECT * FROM hotel WHERE Price<='$budget' && Features
                 Like '%$feature%' && Star='$ratings' && Rating>='$score';"; 
                }
             elseif($budget!=null && $ratings!=null && $score!=null && $feature==null){
              $query1="SELECT * FROM hotel WHERE Price<='$budget' 
               && Star=='$ratings' && Rating>='$score';";
                }
             elseif($budget!=null && $ratings!=null && $score==null && $feature!=null){
              $query1="SELECT * FROM hotel WHERE Price<='$budget' && Features
              Like '%$feature%' && Star=='$ratings';";
                }
               elseif($budget!=null && $ratings==null && $score!=null && $feature!=null){
                $query1="SELECT * FROM hotel WHERE Price<='$budget' && Features
                 Like '%$feature%'  && Rating>='$score';";
                }
                elseif($budget==null && $ratings!=null && $score!=null && $feature!=null){
                  $query1="SELECT * FROM hotel WHERE  && Features
                  Like '%$feature%' && Star=='$ratings' && Rating>='$score';";
                  }
               elseif($budget==null && $ratings==null && $score!=null && $feature!=null){
                $query1="SELECT * FROM hotel WHERE  && Features
                Like '%$feature%' && Rating>='$score';";
                  }
               elseif($budget==null && $ratings!=null && $score==null && $feature!=null){
                $query1="SELECT * FROM hotel WHERE  && Features
                Like '%$feature%' && Star=='$ratings' ;";
                  }
                 elseif($budget==null && $ratings!=null && $score!=null && $feature==null){
                  $query1="SELECT * FROM hotel WHERE 
                     Star=='$ratings' && Rating>='$score';";
                  }
                  elseif($budget!=null && $ratings==null && $score==null && $feature!=null){
                    $query1="SELECT * FROM hotel WHERE Price<='$budget' && Features
                    Like '%$feature%' ;";
                    }
                 elseif($budget!=null && $ratings==null && $score!=null && $feature==null){
                  $query1="SELECT * FROM hotel WHERE Price<='$budget'
                   && Rating>='$score';";
                    }
                 elseif($budget!=null && $ratings!=null && $score==null && $feature==null){
                  $query1="SELECT * FROM hotel WHERE Price<='$budget' 
                   && Star=='$ratings' ;";
                    }
                   elseif($budget!=null && $ratings==null && $score==null && $feature==null){
                    $query1="SELECT * FROM hotel WHERE Price<='$budget' ;";
                    }
                    elseif($budget==null && $ratings!=null && $score==null && $feature==null){
                      $query1="SELECT * FROM hotel WHERE Star>='$ratings';";
                      }
                      elseif($budget==null && $ratings==null && $score!=null && $feature==null){
                        $query1="SELECT * FROM hotel WHERE  Rating>='$score';";
                        }
                        elseif($budget==null && $ratings==null && $score==null && $feature!=null){
                          $query1="SELECT * FROM hotel WHERE  Features Like '%$feature%';";
                          }
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
                            ?>
                        
                        <?php
                        if($count==0)
                        {
                        ?>
                        <b><div id="No_of_hotels"></div></b>
                        <?php
                        }
                        $count=$count+1;
                        ?>
                        <div id="hotels">
                            <div id="hotelall">
                              <img id="images" src="<?php echo "$picture";?>" alt="Hotel 1">
                              <span id="hotel_Name"><?php echo "$name";?>
                                 <br> <span id="Location"><u> <?php echo "$city";?></u>&nbsp;<a href="#"><u>Show on Map</u></a>
                                  <br><span id="qualities">Breakfast Included</span>
                                <br><span id="rooms">Rooms left: <?php echo "$room_available";?></span></span>
                                <br>
                                <span id="discount"><?php echo "$discount";?>% Discount Available</span>
                                <br>
                                <span id="stay_info"><?php echo "$interval";?> nights,<?php echo "$adult";?> adults,<?php echo "$children";?> children,<?php echo "$room";?> room</span>
        <br>
                                <span id="Taka">BDT <?php echo "$price";?> &nbsp; <input class="button-29" type="button" value="Book Now" onclick="pay('<?php echo "$name";?>')"/></span>
                              </span> 
                              <span id="rating">Excellent<br><span id="reviews"><?php echo "$reviews";?><br></span>
                              <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>    
                            </span>     
                              <span id="ratings_box"><?php echo "$rating";?></span>
                            </div>
                            <?php
                            }
                          }

    }
?>
</div>
</div>
      </div>
    </div>
<!-- Eikhane change korbiiii -->
<br>
       <footer class="section footer-corporate context-dark">
        <div class="footer-corporate-inset">
          <div class="container">
            <div class="row row-40 justify-content-lg-between">
              <div class="col-sm-6 col-md-12 col-lg-3 col-xl-4">
                <div class="oh-desktop">
                  <div class="wow slideInRight" data-wow-delay="0s">
                    <h6 class="text-spacing-100 text-uppercase">Contact us</h6>
                    <ul class="footer-contacts d-inline-block d-sm-block">
                      <li>
                        <div class="unit">
                          <div class="unit-left"><span class="icon fa fa-phone"></span></div>
                          <div class="unit-body"><a class="link-phone" href="tel:#">+1 323-913-4688</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit">
                          <div class="unit-left"><span class="icon fa fa-envelope"></span></div>
                          <div class="unit-body"><a class="link-aemail" href="mailto:#">info@demolink.org</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit">
                          <div class="unit-left"><span class="icon fa fa-location-arrow"></span></div>
                          <div class="unit-body"><a class="link-location" href="#">4730 Crystal Springs Dr, Los Angeles, CA 90027</a></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-5 col-lg-3 col-xl-4">
                <div class="oh-desktop">
                  <div class="wow slideInDown" data-wow-delay="0s">
                    <h6 class="text-spacing-100 text-uppercase">Popular news</h6>
                    <!-- Post Minimal 2-->
                    <article class="post post-minimal-2">
                      <p class="post-minimal-2-title"><a href="#">Your Personal Guide to 5 Best Places to Visit on Earth</a></p>
                      <div class="post-minimal-2-time">
                        <time datetime="2019-05-04">May 04, 2019</time>
                      </div>
                    </article>
                    <!-- Post Minimal 2-->
                    <article class="post post-minimal-2">
                      <p class="post-minimal-2-title"><a href="#">Top 10 Hotels: Rating by Wonder Tour Travel Experts</a></p>
                      <div class="post-minimal-2-time">
                        <time datetime="2019-05-04">May 04, 2019</time>
                      </div>
                    </article>
                  </div>
                </div>
              </div>
              <div class="col-sm-11 col-md-7 col-lg-5 col-xl-4">
                <div class="oh-desktop">
                  <div class="wow slideInLeft" data-wow-delay="0s">
                    <h6 class="text-spacing-100 text-uppercase">Quick links</h6>
                    <ul class="row-6 list-0 list-marked list-marked-md list-marked-secondary list-custom-2">
                      <li><a href="about.html">About us</a></li>
                      <li><a href="#">Our Tours</a></li>
                      <li><a href="#">Our Team</a></li>
                      <li><a href="#">Gallery</a></li>
                      <li><a href="#">Blog</a></li>
                    </ul>
                    <div class="group-md group-middle justify-content-sm-start"><a class="button button-lg button-primary button-ujarak" href="#">Get in touch</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-corporate-bottom-panel">
          <div class="container">
            <div class="row justfy-content-xl-space-berween row-10 align-items-md-center2">
              <div class="col-sm-6 col-md-4 text-sm-right text-md-center">
                <div>
                  <ul class="list-inline list-inline-sm footer-social-list-2">
                    <li><a class="icon fa fa-facebook" href="#"></a></li>
                    <li><a class="icon fa fa-twitter" href="#"></a></li>
                    <li><a class="icon fa fa-google-plus" href="#"></a></li>
                    <li><a class="icon fa fa-instagram" href="#"></a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-6 col-md-4 order-sm-first">
                <!-- Rights-->
                <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>Wonder Tour</span>. All Rights Reserved. Design by <a href="https://www.templatemonster.com">TemplateMonster</a></p>
              </div>
              <div class="col-sm-6 col-md-4 text-md-right">
                <p class="rights"><a href="#">Privacy Policy</a></p>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script>
     var name="<?php echo $name; ?>";
      var city="<?php echo $city; ?>";
      var adult="<?php echo $adult; ?>";
      var children="<?php echo $children; ?>";
      var room="<?php echo $room; ?>";
      var room_type="<?php echo $room_type; ?>";
      var bed="<?php echo $bed; ?>";
      var check_ins="<?php echo $check_ins; ?>";
      var check_outs="<?php echo $check_outs; ?>";
      var interval="<?php echo $interval; ?>";
     function pay(name){
      location.assign('payment.php?name='+name+'&city='+city+'&adult='+adult+'&children='+children+
          '&room='+room +'&room_type='+room_type+
          '&bed='+bed+'&interval='
          +interval+'&check_ins='
          +check_ins+'&check_outs='
          +check_outs);
      }
      document.getElementById("No_of_hotels").innerHTML="<?php echo $city; ?>"+" : "+"<?php echo $count; ?>" + " hotel found";
      </script>
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    
  </body>
</html>