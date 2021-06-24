<?php
function sqlGetByName($name){ return "SELECT * FROM member WHERE name='$name'";};

function getData($sql,$all=true)
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'member';
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password,$dbname);
    
    // Check connection
    if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
    }
    // echo "Connected successfully";
    $query = mysqli_query($conn, $sql);

    $result = $all ? $query->fetch_all(MYSQLI_ASSOC) : mysqli_fetch_assoc($query);

    return (object)$result;
}

function dd($data)
{
    var_dump($data);die();
}