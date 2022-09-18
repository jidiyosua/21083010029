printf "saham apa yang anda pegang ?\n"
printf "BBCA ?\n"
printf "ADRO ?\n"
printf "ICBP ?\n"

read saham

case "$saham" in

"BBCA")
echo "BBCA merupakan saham multibagger!"
;;
"ADRO")
echo "harga saham ADRO mengikuti harga batu bara dunia"
;;
"ICBP")
echo "harga saham ICBP sedang tidak stabil"
;;
*)
echo "saham yang kamu pegang sedang naik"
;;
esac

