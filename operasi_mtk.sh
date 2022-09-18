a=13
b=47

#use let
let jumlah=$a+$b
let kurang=$a-$b
let kali=$a*$b

#use expr
bagi=expr $a / $b

#use subtitution
mod=$(($a % $b))

echo "a + b = $jumlah"
echo "a - b = $kurang"
echo "a * b = $kali"
echo "a / b = $bagi"

