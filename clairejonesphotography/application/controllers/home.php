<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends CI_Controller {

	public function __construct() { // call to the parent Controller class so all methods are available
  		parent::__construct();
  		$this->load->helper('url');
      $this->load->model('Galleries_model');
      $this->load->library('pagination');
  	}

  	public function index() {
      $data['title'] = 'Home Page | Claire Jones Photography';
  		$this->load->view('main_header.php', $data);
  		$this->load->view('main_content.php');
  		$this->load->view('footer.php');
  	}

  	public function portfolio() {
      $data['title'] = 'My Portfolio | Claire Jones Photography';
  		$config['base_url'] = '/clairejonesphotography/portfolio/';      
  		$config['total_rows'] = $this->Galleries_model->record_count();
      $config['per_page'] = 9;
      $config['uri_segment'] = 4;
      $choice = $config['total_rows'] / $config['per_page'];
      $config['num_links'] = round($choice);

      $this->pagination->initialize($config);
      $page = ($this->uri->segment(4));
  
      $data['results'] = $this->Galleries_model->fetch_nature_thumbnails($config['per_page'], $page);
      $data['links'] = $this->pagination->create_links();
   
  		
  		$this->load->view('portfolio_header.php', $data);
      $this->load->view('portfolio_content_nature', $data);
    	$this->load->view('footer.php');  		
  	}

    public function wildlife() {
      $data['title'] = 'My Portfolio - Wild Life | Claire Jones Photography';
      $config['base_url'] = '/clairejonesphotograpy/wildlife';      
      $config['total_rows'] = $this->Galleries_model->record_count();
      $config['per_page'] = 9;
      $config['uri_segment'] = 4;
      $choice = $config['total_rows'] / $config['per_page'];
      $config['num_links'] = round($choice);

      $this->pagination->initialize($config);
      $page = ($this->uri->segment(4));
  
      $data['results'] = $this->Galleries_model->fetch_wildlife_thumbnails($config['per_page'], $page);
      $data['links'] = $this->pagination->create_links();
   
      
      $this->load->view('portfolio_header.php', $data);
      $this->load->view('portfolio_content_wildlife', $data);
      $this->load->view('footer.php');      
    }

    public function wedding() {
      $data['title'] = 'My Portfolio - Wedding | Claire Jones Photography';
      $config['base_url'] = '/clairejonesphotography/wedding';      
      $config['total_rows'] = $this->Galleries_model->record_count();
      $config['per_page'] = 9;
      $config['uri_segment'] = 4;
      $choice = $config['total_rows'] / $config['per_page'];
      $config['num_links'] = round($choice);

      $this->pagination->initialize($config);
      $page = ($this->uri->segment(4));
  
      $data['results'] = $this->Galleries_model->fetch_wedding_thumbnails($config['per_page'], $page);
      $data['links'] = $this->pagination->create_links();
   
      
      $this->load->view('portfolio_header.php', $data);
      $this->load->view('portfolio_content_wedding', $data);
      $this->load->view('footer.php');      
    }

    public function portraits() {
      $data['title'] = 'My Portfolio - Portraits | Claire Jones Photography';
      $config['base_url'] = '/clairejonesphotography/portraits';      
      $config['total_rows'] = $this->Galleries_model->record_count();
      $config['per_page'] = 9;
      $config['uri_segment'] = 4;
      $choice = $config['total_rows'] / $config['per_page'];
      $config['num_links'] = round($choice);

      $this->pagination->initialize($config);
      $page = ($this->uri->segment(4));
  
      $data['results'] = $this->Galleries_model->fetch_portrait_thumbnails($config['per_page'], $page);
      $data['links'] = $this->pagination->create_links();
   
      
      $this->load->view('portfolio_header.php', $data);
      $this->load->view('portfolio_content_portrait', $data);
      $this->load->view('footer.php');      
    }

    public function landscape() {
      $data['title'] = 'My Portfolio - Landscape | Claire Jones Photography';
      $config['base_url'] = '/clairejonesphotography/landscape';      
      $config['total_rows'] = $this->Galleries_model->record_count();
      $config['per_page'] = 9;
      $config['uri_segment'] = 4;
      $choice = $config['total_rows'] / $config['per_page'];
      $config['num_links'] = round($choice);

      $this->pagination->initialize($config);
      $page = ($this->uri->segment(4));
  
      $data['results'] = $this->Galleries_model->fetch_landscape_thumbnails($config['per_page'], $page);
      $data['links'] = $this->pagination->create_links();
   
      
      $this->load->view('portfolio_header.php', $data);
      $this->load->view('portfolio_content_landscape', $data);
      $this->load->view('footer.php');      
    }

  	public function about() {
      $data['title'] = 'About Claire | Claire Jones Photography';
  		$this->load->view('about_header.php', $data);
    	$this->load->view('about_content.php');
    	$this->load->view('footer.php');  		
  	}

  	public function contact() {
      $data['title'] = 'Contact Claire | Claire Jones Photography';
      $this->load->library('form_validation');
      $this->form_validation->set_rules('firstname', 'FirstName', 'required|min_length[5]|max_length[15]|is_unique[users.username|trim|xss_clean');
      $this->form_validation->set_rules('lastname', 'LastName', 'required|min_length[5]|max_length[15]|is_unique[users.username|trim|xss_clean');
      $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
      $this->form_validation->set_rules('phone', 'Phone', 'trim|required|xss_clean');
      $this->form_validation->set_rules('message', 'Message', 'required');
		  $this->load->view('contact_header.php', $data);
  		$this->load->view('contact_content.php');
  		$this->load->view('footer.php');  		
  	}

    public function sendemail() {

      $this->load->library('email');

      $this->email->from($this->input->post('name'), $this->input->post('email'));
      $this->email->to('support@clairejonesphotography.site88.net');
      $this->email->subject('Email Test');
      $this->email->message($this->input->post('email_message'));

      if($this->email->send()) {
      $this->session->set_flashdata('success', 'Thank you for email! We will get back to you shortly.');    
        redirect('emailsent'); 
        } else {
              echo $this->email->print_debugger();      
        }
    }

    public function emailsent() {
      $data['title'] = 'Received your email thank you | Claire Jones Photography';
      $this->load->view('contact_header.php');
      $data['flash'] = $this->session->flashdata('success');    
      $this->load->view('emailsent.php', $data);
      $this->load->view('footer.php');    
    }


  }