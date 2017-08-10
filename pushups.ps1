Write-Host "PushUp script. Leave me running." -ForegroundColor Magenta
Add-Type -AssemblyName System.Windows.Forms
$result = [System.Windows.Forms.MessageBox]::Show('You have executed the pushup script
Press ok to begin', 'Fat Man Alert!', 'ok', 'Warning')
$i = 0
$t = 0
while($true){
$i++
Start-Sleep -s 2400
$MessageBody = "DO 20 PUSHUPS. $t done so far"
$result = [System.Windows.Forms.MessageBox]::Show($MessageBody, 'Fat Man Alert!', 'ok', 'warning')
$t = $i * 20
Write-Host "Completed sets/total: $i/$t" -ForegroundColor Cyan
}