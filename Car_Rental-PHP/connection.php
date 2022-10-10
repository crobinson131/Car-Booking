<?php

function Connect()
{
	$dbhost = "localhost";
	$dbuser = "anita";
	$dbpass = "pass123";
	$dbname = "car_rental";

	//Create Connection
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname) or die($conn->connect_error);

	return $conn;
}