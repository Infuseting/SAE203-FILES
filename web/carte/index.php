<?php
include __DIR__ . '/../config.php';
function route($path) {
    $path = preg_replace('/[?#].*/', '', $path);
    $path = preg_replace('/https?:\/\/[^\/]+/', '', $path);
    return $path;
}

function buildCard($vPrefix, $vFirstName, $vLastName, $vCompanyName, $vJobTitle, $vWebsite, $vEmail, $vPhone, $vNotes, $vSuffix, $vImgBase64)
{
    $vCard = "BEGIN:VCARD\n";
    $vCard .= "VERSION:3.0\n";
    $vCard .= "N:$vPrefix $vFirstName $vLastName $vSuffix\n";
    $vCard .= "FN:$vPrefix $vFirstName $vLastName $vSuffix\n";
    $vCard .= "ORG:$vCompanyName\n";
    $vCard .= "TITLE:$vJobTitle\n";
    $vCard .= "URL:$vWebsite\n";
    $vCard .= "EMAIL:$vEmail\n";
    $vCard .= "TEL:$vPhone\n";
    $vCard .= "NOTE:$vNotes\n";
    $vCard .= "PHOTO;ENCODING=b;TYPE=JPEG:$vImgBase64\n";
    $vCard .= "END:VCARD\n";
    return $vCard;
}

$conn = getConn();

$router = str_replace('/carte/', '', route($_SERVER['REQUEST_URI']));

$SQL = "SELECT * FROM imp_carte WHERE CAR_ID = '$router'";
$results = $conn->query($SQL);
$result = $results->fetch_assoc();



header('Content-Type: text/vcard');
header('Content-Disposition: attachment; filename="contact.vcf"');
echo buildCard($result['CAR_PREFIX'], $result['CAR_PRENOM'], $result['CAR_NOM'], $result['CAR_COMPANY_NAME'], $result['CAR_POSTE'], $result['CAR_WEBSITE'], $result['CAR_MAIL'], $result['CAR_PHONE'], $result['CAR_NOTES'], $result['CAR_SUFFIX'], $result['CAR_IMAGE']);


