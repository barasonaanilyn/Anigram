<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index(){
		$data['innerPage'] = 'search';
		$this->load->view('guest/template',$data);
	}
}
