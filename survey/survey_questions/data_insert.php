<?php
include_once 'dbconnect.php';



  $sname = $_POST['s_name'];
	$category = $_POST['category'];
	$question = $_POST['question'];
	$o1 = $_POST['o1'];
  $o2 = $_POST['o2'];
  $o3 = $_POST['o3'];
  $o4 = $_POST['o4'];
	$o5 = $_POST['o5'];
  $description = $_POST['description'];
  $time = $_POST['time'];
	//$content =$MySQLi_CON->real_escape_string($_POST['editor']);
	//$category = htmlspecialchars($_POST['category']);
  $o6 = $_POST['o6'];
  $made_by = htmlspecialchars($_POST['made_by']);

  for($i=0;$i<count($question);$i++)
  {
        
        $ques = mysqli_escape_string($MySQLi_CON,$question[$i]);
        $op1 = mysqli_escape_string($MySQLi_CON,$o1[$i]);
        $op2 = mysqli_escape_string($MySQLi_CON,$o2[$i]);
        $op3 = mysqli_escape_string($MySQLi_CON,$o3[$i]);
        $op4 = mysqli_escape_string($MySQLi_CON,$o4[$i]);
        $op5 = mysqli_escape_string($MySQLi_CON,$o5[$i]);
        $op6 = mysqli_escape_string($MySQLi_CON,$o6[$i]);
    # code...
    $query = "INSERT INTO questions_survey(Question,Option1,Option2,Option3,Option4,Option5,Option6,Category,SName,Description,Timer,madeby) VALUES ('$ques','$op1','$op2','$op3','$op4','$op5','$op6','$category','$sname','$description','$time','$made_by')";
    if($MySQLi_CON->query($query))
  {
    $flg = 1;
  }
  else
  {
    $flg = 2;
    break;
  }


	}
	
	if($flg==1)
	{
		$msg = 1;
	}
	else
	{
		$msg = 2;
	}
	

?>
<!DOCTYPE html>
<html>
<head>
	<title>Simply Bhand | Submit Work</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>Success Notification Boxes</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="data_insert.css">
		<link rel="shortcut icon" href="images/LOGOSIMPLY.png" />
    <style type="text/css">
    body {
  overflow: hidden;
}


/* Preloader */

#preloader {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #fff;
  /* change if the mask should have another color then white */
  z-index: 99;
  /* makes sure it stays on top */
}

#status {
  width: 60%;
  height: 30%;
  position: absolute;
  left: 20%;
  /* centers the loading animation horizontally one the screen */
  top: 20%;
  /* centers the loading animation vertically one the screen */
  background-image: url(http://maffrigby.com/wp-content/uploads/2014/03/gettestr-large-spinner-orange.gif);
  /* path to your loading animation */
  background-repeat: no-repeat;
  background-position: center;
  /*margin: -100px 0 0 -100px;
  /* is width and height divided by two */
}
  </style>
	
</head>
<body>
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
	<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="http://simplybhand.com/"><img src="images/LOGOSIMPLY.png" style="max-width:60px; margin-top: -20px;"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="http://simplybhand.com/"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      </ul>
    </div>
  </div>
</nav>
<br><br>
	<div id="w">
    <div id="content">
    <div class="container">
				<div class="row">
					
					<div class="col-lg-12 col-sm-6">
					

      <!-- Icons source http://dribbble.com/shots/913555-Flat-Web-Elements -->
      <?php if($msg == 1){
     echo ' <center><div class="notify successbox">
        <h1>Success!</h1>
        <span class="alerticon"><img src="http://s22.postimg.org/i5iji9hv1/check.png" alt="checkmark" /></span>
        <p>Thank You !! </p>
        
        <p class= "pull-right"> Team Simply Bhand <br><br></p>
        <a href="http://simplybhand.com/survey/survey_questions/index.php"><button class="btn-change7">Add More</button></a>

        
      </div></center><br><br>';

      

      
      }
      else{
      echo '<center><div class="notify errorbox">
        <h1>Failed Try Again !!</h1>
        <span class="alerticon"><img src="http://s22.postimg.org/ulf9c0b71/error.png" alt="error" /></span>';
       
    if($msg == 2){
          echo '<p>Sorry !! Server Error.Go Back and Try again.</p>
        <p class= "pull-right"> Team Simply Bhand </p>
        <a href="http://simplybhand.com/survey/survey_questions/index.php"><button class="btn-change7">Add Again</button></a>
      </div></center><br><br>'
      
      ;
    }
      }
      ?>
      </div>
      </div>
      </div>
    </div><!-- @end #content -->
  </div><!-- @end #w -->
</div>
<script type="text/javascript">
    $(window).load(function() { // makes sure the whole site is loaded
  $('#status').fadeOut(); // will first fade out the loading animation
  $('#preloader').delay(250).fadeOut('slow'); // will fade out the white DIV that covers the website.
  $('body').delay(250).css({
    'overflow': 'visible'
  });
})
  </script>

</body>
</html>