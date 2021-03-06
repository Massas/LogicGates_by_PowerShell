// データのバリデーション：0か1しか受け付けない
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

// AND：論理積
function Conjunction($a, $b){
    // 1同士で乗算した場合のみ1を返す
    $c = $a * $b
    return $c
}

// OR：論理和
function Disjunction($a, $b){
    // 引数で受けた値を足して1以上になる場合は1を返す
    if (($a + $b) -ge 1){
        return 1
    }else{
        return 0
    }
}

// NOT：否定
function Negation($a){
    // 引数で受けた値を反転する
    if ($a -eq 0){
        return 1
    }
    else{
        return 0
    }
}

// NAND：否定論理積
function NonConjunction($a, $b){
    // 論理積を出す
    $c = Conjunction $a $b
    // 否定にして値を反転する
    $d = Negation $c
    return $d
}

// NOR：否定論理和
function NonDisjunction($a, $b){
    // 論理和を出す
    $c = Disjunction $a $b
    // 否定にして値を反転する
    $d = Negation $c
    return $d
}

// XOR：排他的論理和
function ExclusiveDisjunction($a, $b){
    // 引数で受けた値を足して、値が1になる場合のみ1を返す
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