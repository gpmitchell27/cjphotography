<?php
 
class Auth_model extends CI_Controller {
	public function __construct() {
		parent::__construct();
        $this->load->database();
	}

	public function show_entries() {
		$this->db->select('*');		
		$this->db->from('user');
		$this->db->where('username', $username);
		$this->db->where('password', md5($password));
   		$this->db->limit(1);
   		$query = $this->db->get();
    	if($query -> num_rows() == 1) {
	     return $query->result();
	     echo "finally";
	   } else {
	   	echo "nice try";
	     return false;
	   }
	}

	public function set_session() {
		$this->session->set_userdata(array(
			'id' => $this->details->id,
			'username' => $this->details->username, 
			'is_admin' => $this->details->isAdmin,
			'is_loggedin' => TRUE
			)
		);
	}
}
