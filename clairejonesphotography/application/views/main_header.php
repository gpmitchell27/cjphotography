<!doctype HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title><?php echo $title; ?></title>
	<link href="<?php echo site_url('files/css/bootstrap.min.css');?>" rel="stylesheet" type="text/css">
	<link href="<?php echo site_url('files/css/reset.css');?>" rel="stylesheet" type="text/css">	
	<link href="<?php echo site_url('files/css/style.css');?>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<?php echo site_url('files/js/jquery.js');?>"></script>
	<script type="text/javascript" src="<?php echo site_url('files/js/jquery.cycle.all.min.js');?>"></script>
	<script type="text/javascript" src="<?php echo site_url('files/js/scripts.js');?>"></script>

</head>
<body id="main">
	<header>
		<p><a href="<?php echo site_url();?>"><img src="<?php echo site_url('files/images/cjphoto.png');?>" alt="ClaireJonesPhotography" /></p></a>
		<nav>
			<ul>
				<li><a href="#" class="active">HOME</a> <span class="divider">|<span></li>
				<li><a href="<?php echo site_url('portfolio');?>">PORTFOLIO</a><span class="divider">|<span></li>
				<li><a href="<?php echo site_url('contact');?>">CONTACT US</a><span class="divider">|<span></li>
				<li><a href="<?php echo site_url('about');?>">ABOUT</a></li>
			</ul>
		</nav>
	</header>
