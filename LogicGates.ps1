// AND�F�_����
function Conjunction($a, $b){
    // 1���m�ŏ�Z�����ꍇ�̂�1��Ԃ�
    $c = $a * $b
    return $c
}

// OR�F�_���a
function Disjunction($a, $b){
    // �����Ŏ󂯂��l�𑫂���1�ȏ�ɂȂ�ꍇ��1��Ԃ�
    if (($a + $b) -gt 1){
        return 1
    }else{
        return 0
    }
}

// NOT�F�ے�
function Negation($a){
    // �����Ŏ󂯂��l�𔽓]����
    if ($a -eq 0){
        return 1
    }
    else{
        return 0
    }
}

// NOR�F�ے�_���a
functon NonDisjunction($a, $b){
    // �_���a���o��
    $c = Disjunction($a, $b)
    // �ے�ɂ��Ēl�𔽓]����
    $d = Negation($c)
    return $d
}

// NAND�F�ے�_����
function NonConjunction($a, $b){
    // �_���ς��o��
    $c = Conjunction($a, $b)
    // �ے�ɂ��Ēl�𔽓]����
    $d = Negation($c)
    return $d
}

// XOR�F�r���I�_���a
function ExclusiveDisjunction($a, $b){
    // �����Ŏ󂯂��l�𑫂��āA�l��1�ɂȂ�ꍇ�̂�1��Ԃ�
    if ($a + $b -eq 1){
        return 1
    }
    else{
        return 0
    }
}

// �f�[�^�̃o���f�[�V�����F0��1�����󂯕t���Ȃ�
function Validation($val){
    if(($val -eq 0) -Or ($val -eq 1)){
        return 0
    }
    else{
        Write-Host -message "Validation Check Error: please assign 0 or 1!"
        return -1
    }
}
