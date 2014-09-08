<?php
 
try 
{
    $dbh = new PDO('mysql:host=127.0.0.1;dbname=dvdshack', 'root', '');
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} 

catch (PDOException $e) 
{
    echo "Connection Error!: " . $e->getMessage(); // if mysql cant connect, display reason for error
    die();
}
 
// GET THE RECORDS
try 
{
	$sql = "SELECT * FROM members";
    /*Comment out when finished developing*/
    print("The SQL code used for this statement was: ");
    echo "<br>"; 
    echo $sql;
    $statement = $dbh->prepare($sql);
    $statement->execute();
 
}

catch (PDOException $e) //if query doesnt work, display error
{
    echo "<hr>";
    echo "Query Error!: " . $e->getMessage();
    echo "<hr><pre>";
    print_r($e);
    die();
}

// make the date change with varirable
//$originalDate = "08-27-2014";
//$newDate = date("D-M-y", strtotime($originalDate));

?>
