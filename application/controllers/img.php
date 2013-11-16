<?php
class Img extends Controller
{
  public function __construct()
  {
    parent::Controller();
    $this->load->model("img_model", "img");
		ini_set("memory_limit", "64M"); // adjust to your own needs
  }
  public function index()
  {
    redirect('/');
  }
  public function size()
  { 
    //echo "here";
    $props = $this->uri->ruri_to_assoc();
    $this->img->set_img($props['o']);
    $this->img->set_size($props['w'], $props['h'], $props['m']);
    $this->img->set_square($props['m']);
    $this->img->get_img();
  }
}