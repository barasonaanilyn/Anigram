<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index()
	{
		$cData['vData']['page'] = 'Dh';
        $cData['innerView']='vDashboard';
		$this->load->view('user/template',$cData);
	}
}
