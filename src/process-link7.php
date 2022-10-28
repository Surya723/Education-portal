<?php

$f_name = $_POST["fname"];
$f_id = $_POST["fid"];
$f_desi = $_POST["fdesi"];
$f_ph = $_POST["fph"];
$f_sch = $_POST["fsch"];
$f_m = $_POST["fm"];

if ( ! $terms) {
    die("Terms must be accepted");
}   

$host = "localhost";
$dbname = "vilearn";
$username = "root";
$password = "";
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           
        
$sql = "INSERT INTO faculty_list(fname,f_id,f_desi,f_ph,f_sch,f_m)
        VALUES (?, ?, ?, ?, ?, ?)";

$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "ssii",
                       $f_name,
                       $f_id,
                       $f_desi,
                       $f_ph,
			     $f_sch,
			     $f_m);

mysqli_stmt_execute($stmt);

echo "Record saved.";
