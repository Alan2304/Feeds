<?php 

class Feed{
    private $conn;
    private $table_name = 'feed';

    //Object Properties
    public $id;
    public $title;
    public $description;
    public $date;
    public $permalink;

    public function __construct($db){
        $this->conn = $db;
    }

    function search($keyword){
        //Match Query

        $query = "SELECT title, date, MATCH(title,description) AGAINST( '{$keyword}' ) AS SCORE
                        FROM feeds WHERE MATCH(title,description) AGAINST ( '{$keyword}' ) ORDER BY SCORE DESC";
        $stmt = $this->conn->prepare($query);    
        //bind
        $stmt->bindValue(1, $keyword, PDO::PARAM_STR);
        $stmt->bindValue(2, $keyword, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt;
    }

}


?>