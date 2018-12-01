<?php 
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once '../config/database.php';
include_once '../objects/feed.php';

// instantiate database and product object
$database = new Database();
$db = $database->getConnection();

//Initialize object
$feed = new Feed($db);

//Set the search of the feeds
$keywords=isset($_GET["s"]) ? $_GET["s"] : "";

//Query the feeds
$stmt = $feed->search($keywords);
$num = $stmt->rowCount();

if ($num > 0) {
    $feedsArr = array();
    $feedsArr["records"] = array();

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);

        $feedItem = Array(
            "title" => $title,
            "date" => $date
        );

        array_push($feedsArr["records"], $feedItem);
    }

    //set reponse code 200 PK
    http_response_code(200);

    //Show products data
    echo json_encode($feedsArr);

}else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user no products found
    echo json_encode(
        array("message" => "No products found.")
    );
}

?>