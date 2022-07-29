<!DOCTYPE html>
<html>
<head>
</head>
<body>

<?php

include ("util.php");
$dbconn = getConnection();

$q = ($_GET['q']);

$query = "SELECT OBJECT_tb.gid,OBJECT_tb.name FROM OBJECT_tb,AREA_tb where AREA_tb.abb=$1 and AREA_tb.gid=OBJECT_tb.AREA_tb_gid";
$data = array($q);

$result = pg_query_params($dbconn, $query, $data);

$resultList=array();

while($row = pg_fetch_row($result)) {
    $item = new \stdClass();
    $item->gid=$row[0];
    $item->name=$row[1];
    array_push($resultList, json_encode($item));
}

$resultstring = htmlspecialchars(json_encode($resultList), ENT_QUOTES, 'UTF-8');

echo "<div data-side=\"resultByArea\" data-params=\"";
echo $resultstring;
echo "\" style=\"display:flex\"></div>";
pg_close($dbconn);
?>
</body>
</html>

