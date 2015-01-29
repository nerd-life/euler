<?php
$sum = 0;
$fibonacci = 1;
$a = 0;
$b = 1;

while ($fibonacci <= 4000000) {
	$fibonacci = $a + $b;
	$a = $b;
	$b = $fibonacci;	
	if ($fibonacci % 2 == 0) {$sum += $fibonacci;}
}
echo $sum;
?>
