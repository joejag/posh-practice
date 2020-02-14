# Suprises while doing Get-Urnfield

Fractions get rounded up. So `'A' * 0.6` is `'A'` rather than `''`

# Suprises while doing Get-BowlingScore

Booleans aren't keywords. pwsh reuses the variable syntax like `$false`

If statements dont use `&&` to add predicate conditions. pwsh uses `-and`

Negative numbers have to be wrapped in parens or pwsh thinks they are switches to commands: `Add-Numbers (-2) 2`

# Suprises while doing Get-Roman

Hashtables aren't ordered by default. You can force it by adding an `[ordered]` before degining the hashtable literal.
