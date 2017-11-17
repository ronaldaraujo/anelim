<?php

$jsondata = file_get_contents('one_tbl.json');
$tbls = json_decode($jsondata, true);
$query = [];
// var_dump($tbls);

foreach ($tbls as $name_table => $table) {
	process_table($name_table, $table);
}

function process_table($name_table, $table)
{
	$insert .= 'INSERT INTO ' . $name_table .' (';

	for ($i = 0; $i <= $table['columns']; $i++) { 
		$insert .= $table['columns'] . ', ';
	}

	echo $insert;

	// for ($i = 0; $i < $table['number_lines']; $i++) { 
		
	// }
}