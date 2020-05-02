$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Validationの動作確認"{
    Context "正常系の確認"{
        It "1なら0が返るはず"{
            Validation 1 | Should Be 0
        }
        It "0なら0が返るはず"{
            Validation 0 | Should Be 0
        }
    }
    Context "異常系の確認"{
        It "2なら-1が返るはず"{
            Validation 2 | Should Be -1
        }
        It "-1なら-1が返るはず"{
            Validation -1 | Should Be -1
        }
        It "'A'なら-1が返るはず"{
            Validation 'A' | Should Be -1
        }
        It "01なら-1が返るはず"{
            Validation 01 | Should Be -1
        }
        It "10なら-1が返るはず"{
            Validation 10 | Should Be -1
        }
        It "11なら-1が返るはず"{
            Validation 11 | Should Be -1
        }
    }
}

Describe "Conjunctionの動作確認" {
    Context "正常系の確認"{
        It "1 1なら1が返るはず" {
            Conjunction 1 1 | Should Be 1
        }
        It "1 0なら0が返るはず" {
            Conjunction 1 0 | Should Be 0
        }
        It "0 1なら0が返るはず" {
            Conjunction 0 1 | Should Be 0
        }
        It "0 0なら0が返るはず" {
            Conjunction 0 0 | Should Be 0
        }
    }
}

Describe "Disjunctionの動作確認"{
    Context "正常系の確認"{
        It "1 1なら1が返るはず"{
            Disjunction 1 1 | Should Be 1
        }
        It "1 0なら1が返るはず"{
            Disjunction 1 0 | Should Be 1
        }
        It "0 1なら1が返るはず"{
            Disjunction 0 1 | Should Be 1
        }
        It "0 0なら0が返るはず"{
            Disjunction 0 0 | Should Be 0
        }
    }
}

Describe "Negationの動作確認"{
    Context "正常系の確認"{
        It "1なら0が返るはず"{
            Negation 1 | Should Be 0
        }
        It "0なら1が返るはず"{
            Negation 0 | Should Be 1
        }
    }
}

Describe "NonConjunctionの動作確認"{
    Context "正常系の確認"{
        It "1 1なら0が返るはず"{
            NonConjunction 1 1 | Should Be 0
        }
        It "1 0なら1が返るはず"{
            NonConjunction 1 0 | Should Be 1
        }
        It "0 1なら1が返るはず"{
            NonConjunction 0 1 | Should Be 1
        }
        It "0 0なら1が返るはず"{
            NonConjunction 0 0 | Should Be 1
        }
    }
}

Describe "NonDisjunctionの動作確認"{
    Context "正常系の確認"{
        It "1 1なら0が返るはず"{
            NonDisjunction 1 1 | Should Be 0
        }
        It "1 0なら0が返るはず"{
            NonDisjunction 1 0 | Should Be 0
        }
        It "0 1なら0が返るはず"{
            NonDisjunction 0 1 | Should Be 0
        }
        It "0 0なら1が返るはず"{
            NonDisjunction 0 0 | Should Be 1
        }
    }
}

Describe "ExclusiveDisjunctionの動作確認"{
    Context "正常系の確認"{
        It "1 1なら0が返るはず"{
            ExclusiveDisjunction 1 1 | Should Be 0
        }
        It "1 0なら1が返るはず"{
            ExclusiveDisjunction 1 0 | Should Be 1
        }
        It "0 1なら1が返るはず"{
            ExclusiveDisjunction 0 1 | Should Be 1
        }
        It "0 0なら1が返るはず"{
            ExclusiveDisjunction 0 0 | Should Be 0
        }
    }
}

Describe "ConjunctionTestの動作確認"{
    Context "正常系の確認"{
        It "1 1なら1が返るはず"{
            ConjunctionTest 1 1 | Should Be 1
        }
        It "1 0なら0が返るはず"{
            ConjunctionTest 1 0 | Should Be 0
        }
        It "0 1なら0が返るはず"{
            ConjunctionTest 0 1 | Should Be 0
        }
        It "0 0なら0が返るはず"{
            ConjunctionTest 0 0 | Should Be 0
        }
    }
}

Describe "DisjunctionTestの動作確認"{
    Context "正常系の確認"{
        It "1 1なら1が返るはず"{
            DisjunctionTest 1 1 | Should Be 1
        }
        It "1 0なら1が返るはず"{
            DisjunctionTest 1 0 | Should Be 1
        }
        It "0 1なら1が返るはず"{
            DisjunctionTest 0 1 | Should Be 1
        }
        It "0 0なら0が返るはず"{
            DisjunctionTest 0 0 | Should Be 0
        }
    }
}
