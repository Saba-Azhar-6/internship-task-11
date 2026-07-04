<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
require_once 'db.php';

$method = $_SERVER['REQUEST_METHOD'];

if ($method !== 'GET') {
    http_response_code(405);
    echo json_encode(['error' => 'Method not allowed']);
    exit;
}

// Fetch all services
$result = $conn->query("SELECT * FROM services ORDER BY id");
if ($result) {
    $services = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($services);
} else {
    http_response_code(500);
    echo json_encode(['error' => 'Failed to fetch services']);
}
?>