<?php 

    class Database{
        //Credentials
        private $host = '127.0.0.1';
        private $dbName = 'rss';
        private $username = 'root';
        private $password = '';
        private $charset = 'utf8mb4';
        public $conn;

        public function getConnection(){
            $this->conn = null;
            try {
                $dsn = "mysql:host={$this->host};dbname={$this->dbName};charset={$this->charset}";
                $this->conn = new PDO($dsn, $this->username, $this->password);
                $this->conn->exec("set names utf8");
            } catch (PDOException $exception) {
                echo "Connection error: ". $exception->getMessage();
            }

            return $this->conn;

        }


    }
    
    

?>