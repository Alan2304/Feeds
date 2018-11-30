<?php

  require_once 'vendor/autoload.php';

  $url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml';
  $feed = new SimplePie();
  $feed->set_feed_url($url);
  $feed->enable_cache();
  $feed->init();
?>

 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/main.css">
     <title>RSS</title>
   </head>
   <body>
     <?php
      echo '<h1>' . $feed->get_title() . '</h1>';
      echo '<p>' . $feed->get_description() . '</p>';
      ?>
      <div class="container">
        <div class="row">
          <?php foreach ($feed->get_items() as $item): ?>
            <div class="col-md-4 my-3">
              <div class="card feed">
                <div class="card-header">
                    <?php echo $item->get_title(); ?>
                </div>
                <div class="card-body">
                  <p><?php echo $item->get_description(); ?></p>
      			      <p><small>Posted on <?php echo $item->get_date('j F Y | g:i a'); ?></small></p>
                  <a href="<?php echo $item->get_permalink(); ?>">Ver Noticia Completa</a>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
</body>
</html>
