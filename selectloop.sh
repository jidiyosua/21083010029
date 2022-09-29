#!/bin/bash

select cryptocurrency in bitcoin ethereum solana litecoin shiba doge gaada
do
	case $cryptocurrency in
	shiba|doge)
	echo "harga shiba dan doge mengalami bearish panjang sepanjang 2021"
	;;
	bitcoin)
	echo "harga bitcoin menunjukkan bullish, tetapi lambat selama 3 kuartal"
	;;
	ethereum)
	echo "ethereum rally terus selama 3 tahun ini"
	;;
	solana|litecoin)
	echo "harga solana dan litecoin menunjukkan grafik naik dan turun selama beberapa bulan"
	;;
	gaada)
	break
	;;
	*)echo "tidak ada"
	;;
	esac
done
