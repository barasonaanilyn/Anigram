<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dictionary extends CI_Controller {

	public function index()
	{
		$cData['vData']['page'] = 'MD';
        $cData['innerView']='vDictionary';
		$this->load->view('user/template',$cData);
	}
}
