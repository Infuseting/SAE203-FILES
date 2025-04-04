<?php
include __DIR__ . '/../config.php';
$uuid = $_GET['id'];

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


$SQL = "SELECT * FROM IMP_Carte WHERE CAR_ID = '$uuid'";
$results = $conn->query($SQL);
$result = $results->fetch_assoc();

if ($result) {
    header('Content-Type: text/vcard');
    header('Content-Disposition: attachment; filename="Contact'.$result['CAR_PRENOM'].$result['CAR_NOM'].'.vcf"');
    echo buildCard($result['CAR_PREFIX'], $result['CAR_PRENOM'], $result['CAR_NOM'], $result['CAR_COMPANY_NAME'], $result['CAR_POSTE'], $result['CAR_WEBSITE'], $result['CAR_MAIL'], $result['CAR_PHONE'], $result['CAR_NOTES'], $result['CAR_SUFFIX'], $result['CAR_IMAGE']);
}
else {
    Header('Location: /');
    exit();
}

