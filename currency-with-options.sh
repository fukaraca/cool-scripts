#/bin/bash

# a script to convert a currency 

helppp() 
{
	echo
	echo "HELP"
	echo
	echo "currency-with-options uses api.exchangerate.host for latest currency rates"
	echo ""
	echo "syntax: ./currency-with-options.sh |-h|-b|-t|-a "
	echo "options:"
	echo "h	help"
	echo "b	base currency"
	echo "t	target currency"
	echo "a	amount you wish to convert"
	echo ""
	
}


while getopts b:t:a:h option
do
    case "${option}" in
        "h")
        	helppp
        	exit
        	;;
        "b") 
        	base=${OPTARG}
        	;;
        "t") 
        	target=${OPTARG}
        	;;
        "a") 
        	amount=${OPTARG}
        	;;
        \?)
        	echo "Invalid options"
        	exit
        	;;

    esac
done

CURRAPI=https://api.exchangerate.host/latest=?places=3

curl -X 'GET' $CURRAPI\&base\=$base\&symbols\=$target\&amount=$amount | printf "\n$amount amount of $base : $(grep -Po "\brates\":{\"$target\":\K\d+.\d+") $target \n";

exit;


