function Randomkey {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | ForEach-Object {[char]$_})
}

$NAME = $args[0]


$wd = Randomkey

echo $wd

cd $env:TEMP

mkdir $wd

cd $wd

echo "Enes Burdaydı" > flag.txt

Remove-Item -Path $NAME\uacTest.cmd
