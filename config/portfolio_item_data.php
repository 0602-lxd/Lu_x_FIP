<?php
class PItem{
    private $conn;

    // setting variables for table names (found in database)
    public $portfolio_item_table = 'tbl_portfolio_categories';

    public function __construct($db){
        $this->conn = $db;
    }

    public function getWorks(){
        $query = 'SELECT * FROM tbl_portfolio_categories;';

        $runQuery = $this->conn->query($query);
        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo (json_encode($result));
    }
}