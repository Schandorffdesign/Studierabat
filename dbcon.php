	<?php
	$con = mysql_connect('schandorffdesign.dk.mysql','schandorffdesig','RFXEiATy');
    if(!$con){
    	die('could not connect to mysql:'.mysql_error());
    }
    mysql_select_db('schandorffdesig',$con);
	?>