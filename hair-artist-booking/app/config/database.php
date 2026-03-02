<?php

class Database
{
    private $host = "localhost";
    private $db_name = "hair_artist_booking";
    private $username = "root";      // XAMPP default
    private $password = "";          // XAMPP default
    private $conn;

    public function connect()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name,
                $this->username,
                $this->password
            );

            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch(PDOException $exception) {
            die("Database connection error: " . $exception->getMessage());
        }

        return $this->conn;
    }
}
