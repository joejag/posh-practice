$here = (Split-Path -Parent $MyInvocation.MyCommand.Path)
. $here\Get-Urnfield.ps1

It 'handles numbers less than 5' {
    Get-Urnfield 1 | Should -Be '/'
    Get-Urnfield 2 | Should -Be '//'
    Get-Urnfield 3 | Should -Be '///'
    Get-Urnfield 4 | Should -Be '////'
}
 
It 'handles the magic 5' {
    Get-Urnfield 5 | Should -Be '\'
}

It 'handles other interesting numbers under 30' {
    Get-Urnfield 6 | Should -Be '/\'
    Get-Urnfield 29 | Should -Be '////\\\\\'
}