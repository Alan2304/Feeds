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

    function all(){
        $query = "SELECT title, date, description, permalink FROM feeds";
        $stmt = $this->conn->prepare($query);  
        $stmt->execute();
        return $stmt;
    }

    function search($keyword){
        //Match Query
        $query = "SELECT title, date, MATCH(title,description) AGAINST( '{$keyword}' ) AS SCORE
                        FROM feeds WHERE MATCH(title,description) AGAINST ( '{$keyword}' ) ORDER BY SCORE DESC LIMIT 10";
        $stmt = $this->conn->prepare($query);    
        //bind
        $stmt->bindValue(1, $keyword, PDO::PARAM_STR);
        $stmt->bindValue(2, $keyword, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt;
    }

    function insert(){
        $query = "INSERT INTO feeds (title,description,date,permalink) VALUES('{$this->title}', '{$this->description}', '{$this->date}', '{$this->permalink}')";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
    }

}


?>