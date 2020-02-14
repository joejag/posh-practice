$here = (Split-Path -Parent $MyInvocation.MyCommand.Path)
. $here\Get-Roman.ps1

It 'can handle small numbers' {
    Get-Roman 1 | Should -Be 'I'
    Get-Roman 2 | Should -Be 'II'
    Get-Roman 3 | Should -Be 'III'
    Get-Roman 4 | Should -Be 'IV'
    Get-Roman 5 | Should -Be 'V'
    Get-Roman 6 | Should -Be 'VI'
    Get-Roman 7 | Should -Be 'VII'
    Get-Roman 8 | Should -Be 'VIII'
    Get-Roman 9 | Should -Be 'IX'
    Get-Roman 10 | Should -Be 'X'
}

It 'can handle larger interesting numbers' {
    Get-Roman 99 | Should -Be 'XCIX'
    Get-Roman 101 | Should -Be 'CI'
    Get-Roman 150 | Should -Be 'CL'
    Get-Roman 200 | Should -Be 'CC'
    Get-Roman 3499 | Should -Be 'MMMCDXCIX'
}