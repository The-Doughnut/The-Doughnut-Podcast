<?php
	session_start();
	
	if(isset($_SESSION['pageView'])){
		$_SESSION['pageView'] = $_SESSION['pageView']+1;
	}
	else{
		$_SESSION['pageView'] = 1;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Page Counter</title>
	<link rel="stylesheet" type="text/css" href="../doughnut.css">
	<link rel="shortcut icon" href="../favicon.ico">
</head>
<body>
	<img src="../logo.png" alt="The Doughnut Podcast">
	<h2><a id="announcement"  href="../index.html">HOME</a><a id="announcement" href="../flash_selection.html">FLASH GAMES</a><a id="announcement"  href="../faq.html">FAQ</a><a id="announcement"  href="../extras.html">Extras</a></h2>
	<marquee behavior="scroll" direction="left" id="DisplayText"></marquee>
	<h3>Page Counter</h3>
	<p>
		Refresh the page, and look at this number go: <?php echo 'Page Views: ' .$_SESSION['pageView']; ?>
	</p>
	<br>
	<a id="menu" href="../index.html">Return to main page</a>
	<footer>
		&#169; 2019-2020, The Doughnut Podcast
	</footer>
	<script src="../doughnut.js"></script>
</body>
</html>
