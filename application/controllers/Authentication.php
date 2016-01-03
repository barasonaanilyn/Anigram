<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Authentication extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->helper('url');
    }

    public function index(){
        redirect('/login');
    }

	public function login()
	{
		$this->load->view('auth/login');
	}
}
