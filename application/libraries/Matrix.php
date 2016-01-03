<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Matrix {
    public function get(){
        return array(
            "Dh" => array("name" => "Dashboard", "logo" => "dashboard", "link" => "dashboard"),
            "MD" => array("name" => "My Dictionary", "logo" => "bookmark", "link" => "dictionary"),
            "OD" => array("name" => "Other's Dictionary", "logo" => "book", "link" => "dictionary/others")
        );
    }
}
