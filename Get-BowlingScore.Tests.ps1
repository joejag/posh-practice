$here = (Split-Path -Parent $MyInvocation.MyCommand.Path)
. $here\Get-BowlingScore.ps1

It 'scores gutter balls with a zero score' {
    Get-BowlingScore @(
        (0,0), (0,0), (0,0), (0,0), (0,0)
        (0,0), (0,0), (0,0), (0,0), (0,0)
    ) | Should -Be 0
}

It 'score all threes by just adding them up' {
    Get-BowlingScore @(
        (3,3), (3,3), (3,3), (3,3), (3,3)
        (3,3), (3,3), (3,3), (3,3), (3,3)
    ) | Should -Be 60
}

It 'scores spares, which add up the first score in the next frame' {
    Get-BowlingScore @(
        (4,6), (4,6), (4,6), (4,6), (4,6)
        (4,6), (4,6), (4,6), (4,6), (4,0)
    ) | Should -Be 130
}

It 'handles the extra ball in the frame 10 if we get a spare' {
    Get-BowlingScore @(
        (4,6), (4,6), (4,6), (4,6), (4,6)
        (4,6), (4,6), (4,6), (4,6), (4,6,4)
    ) | Should -Be 140
}

It 'handles all strikes until frame 10' {
    Get-BowlingScore @(
        (10), (10), (10), (10), (10)
        (10), (10), (10), (10), (0,0)
    ) | Should -Be 240
}

It 'handles the perfect game' {
    Get-BowlingScore @(
        (10), (10), (10), (10), (10)
        (10), (10), (10), (10), (10,10,10)
    ) | Should -Be 300
}