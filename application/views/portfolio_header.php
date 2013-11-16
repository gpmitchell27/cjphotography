<!doctype HTML>
<html>
<head>
	<meta charset="UTF-8">
	<title><?php echo $title; ?></title>
	<link href="/<?php echo site_url('files/css/bootstrap.min.css');?>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="<?php echo site_url('files/fancybox/source/jquery.fancybox.css?v=2.1.5');?>" type="text/css" media="screen" />
	<script type="text/javascript" src="<?php echo site_url('files/fancybox/source/jquery.fancybox.pack.js?v=2.1.5');?>"></script>	
	<link href="<?php echo site_url('files/css/reset.css');?>" rel="stylesheet" type="text/css">	
	<link href="<?php echo site_url('files/css/style.css');?>" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>	
</head>
<body id="portfolio">
	<header>
		<p><a href="<?php echo site_url();?>"><img src="<?php echo site_url('files/images/cjphoto.png');?>" alt="ClaireJonesPhotography" /></p></a>
		<nav>
			<ul>
				<li><a href="<?php echo site_url();?>">HOME</a> <span class="divider">|<span></li>
				<li><a href="#" class="active">PORTFOLIO</a><span class="divider">|<span></li>
				<li><a href="<?php echo site_url('contact');?>">CONTACT US</a><span class="divider">|<span></li>
				<li><a href="<?php echo site_url('about');?>">ABOUT</a></li>
			</ul>
		</nav>
	</header>