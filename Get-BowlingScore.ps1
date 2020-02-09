function Flatten($a) {
    @($a | ForEach-Object { $_ })
}

function Get-BowlingScore($frames) {
    $score = (Flatten $frames | Measure-Object -Sum).Sum

    $frameNumber = 0
    foreach ($frame in $frames[0..8]) {
        $frameNumber += 1
        $nextScores = Flatten $frames[$frameNumber..9]

        if($frame[0] -Eq 10) {
            $score += $nextScores[0] + $nextScores[1]
        } elseif (($frame[0] + $frame[1]) -Eq 10) {
            $score += $nextScores[0]
        }
    }
  
    $score
}
