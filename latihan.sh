harga_saham_TLKM=4290
harga_saham_BMRI=7875
let akumulasi=$harga_saham_TLKM+$harga_saham_BMRI
let distribusi=$harga_sahamTLKM-$harga_saham_BMRI

if [ $akumulasi == $distribusi ]
then 
echo "kedua saham memiliki valuasi seimbang"

elif [ $akumulasi -gt $distribusi ]
then
echo "Saham mandiri memiliki valuasi lebih kecil daripada saham telkom"
elif [ $akumulasi -lt $distribusi ]
then
echo "saham telkom memiliki valuasi lebih besar daripada saham mandiri"
else
echo "saham telkom dan saham mandiri tidak dapat dikomparasi"
fi 
