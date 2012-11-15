<?php

class marker {
	var $id;
	var $latitude;
	var $longtitude;
	var $title;
	var $category;
	var $content;
		
		public function __construct($i, $la, $lon, $titl, $categor, $conten){
			$this->id = $i;
			$this->latitude = $la;
			$this->longtitude = $lon;
			$this->title = $titl;
			$this->category = $categor;
			$this->content = $conten;
		}
}

$markers = new ArrayObject();

$link = new mysqli("localhost", "root", "", "mobil");
if ($link->connect_error) {
    die('Connect Error ('.$link->connect_errno.') 
        .$link->connect_error');
}

$stmt = $link->prepare("SELECT * FROM Markers");
$stmt->execute();
$stmt->bind_result($mid, $mlat, $mlong, $mtitle, $mcategory, $mcontent);
while($stmt->fetch()) {
	$markers->append(new marker($mid, $mlat, $mlong, $mtitle, $mcategory, $mcontent));
}

echo json_encode($markers);

?>
