function Conjunction($a, $b){

    $c = $a * $b
    return $c
}

function Validation($val){
    if(($val -eq 0) -Or ($val -eq 1)){
        return 0
    }
    else{
        Write-Host -message "Validation Check Error: please assign 0 or 1!"
        return -1
    }
}