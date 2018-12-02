<?php
  // required headers
  header("Access-Control-Allow-Origin: *");
  header("Content-Type: application/json; charset=UTF-8");
  
  require_once 'vendor/autoload.php';
  // include database and object files
  include_once './config/database.php';
  include_once './objects/feed.php';

  $url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml';
  $feed = new SimplePie();
  $feed->set_feed_url($url);
  $feed->enable_cache();
  $feed->init();

  // instantiate database and product object
  $database = new Database();
  $db = $database->getConnection();

  //Initialize object
  $feedObj = new Feed($db);

  foreach ($feed->get_items() as $item):
    $feedObj->title = $item->get_title();
    $feedObj->description = $item->get_description();
    $feedObj->date = $item->get_date('j F Y | g:i a');
    $feedObj->permalink = $item->get_permalink();
    $feedObj->insert();
  endforeach;

  $response = array(
    'response' => 'OK'
  );

  //set reponse code 200 PK
  http_response_code(200);

  //Show products data
  echo json_encode($response);
?>
