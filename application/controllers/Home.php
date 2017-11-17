<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller 
{
	public function index()
	{
		$output = array();

        if ($this->input->server('REQUEST_METHOD') == "POST") 
		{
			// echo '<pre>';
			// var_dump($this->input->post('input'));
			// echo '</pre>';

			$output = json_decode($this->input->post('input'), true);
			
			// echo '<pre>';
			// var_dump($output);
			// echo '</pre>';
			
			echo $output['nome_tabela'];
		}

		$this->load->view('home', $output);
	}
}
