<?php
    //include database and object files
    include_once 'database.php';
    include_once 'portfolio_item_data.php';

    // instantiate database and portfolio_item_data object
    // vars found in config/database.php
    $database = new Database();
    $db = $database->getConnection();

    // var found in objects/portfolio_item_data.php
    $pitem = new PItem($db);
    // referencing the getWorks function in portfolio_item_data.php - this is how the table is being selected
    $stmt = $pitem->getWorks();

?>

