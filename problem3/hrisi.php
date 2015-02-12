<?php
function largestFactor($n) {
    
    $p = 2;
    $factors = array();
    while ($p*$p <= $n) {
        if (fmod($n,$p) == 0) {
            $factors[] = $p;
            $n = $n / $p;
        } else {
            $p++;
        }
    }
    if ($n != 1) {
        $factors[] = $n;
    }
    return $factors;
}

$factors = largestFactor(600851475143);
rsort($factors);
echo $factors[0];
?>
