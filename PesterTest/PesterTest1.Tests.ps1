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
    }
}

Describe "Conjunctionの動作確認" {
    Context "正常系の確認"{
        It "1+1なら1が返るはず" {
            Conjunction 1 1 | Should Be 1
        }
        It "1+0なら1が返るはず" {
            Conjunction 1 0 | Should Be 0
        }
        It "0+1なら1が返るはず" {
            Conjunction 0 1 | Should Be 0
        }
        It "0+0なら1が返るはず" {
            Conjunction 0 0 | Should Be 0
        }
    }
}
