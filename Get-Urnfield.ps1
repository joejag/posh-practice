function Get-Urnfield {
    param([int]$amount)

    $ones = $amount % 5
    $fives = [Math]::floor($amount / 5)
    '/' * $ones + '\' * $fives
}  
  