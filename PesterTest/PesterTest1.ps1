
function Validation($val){
    if(([String]$val).Length -ne 1){
        Write-Host -message "Validation Check Error: please assign length 1 data!"
        return -1        
    }
    if(($val -eq 0) -Or ($val -eq 1)){
        return 0
    }
    else{
        Write-Host -message "Validation Check Error: please assign 0 or 1!"
        return -1
    }
}
function Conjunction($a, $b){

    $c = $a * $b

    return $c
}

function Disjunction($a, $b){
    if (($a + $b) -ge 1){
        return 1
    }else{
        return 0
    }
}

function Negation($a){
    if ($a -eq 0){
        return 1
    }
    elseif ($a -eq 1){
        return 0
    }
}

function NonConjunction($a, $b){
    $c = Conjunction $a $b

    $d = Negation($c)
    return $d
}

function NonDisjunction($a, $b){

    $c = Disjunction $a $b

    $d = Negation $c
    return $d
}

function ExclusiveDisjunction($a, $b){
    if ($a + $b -eq 1){
        return 1
    }
    else{
        return 0
    }
}

function ConjunctionTest($a, $b){
    $c = Conjunction $a $b
    return $c
}

function DisjunctionTest($a, $b){
    $c = Disjunction $a $b
    return $c
}