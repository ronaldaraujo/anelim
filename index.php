<?php

$jsondata = file_get_contents('one_tbl.json');
$tbls = json_decode($jsondata, true);

public function ProcessTable()
{
	# code...
}

// var_dump($tbls);

foreach ($tbls as $key => $table) {
	var_dump($key);

}