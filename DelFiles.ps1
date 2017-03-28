$Path = "C:\users\username\test"
$DaysBack = "-90"

$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($DaysBack)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item
