#!/bin/bash

CURRAPI=https://api.exchangerate.host/latest=?places=3

echo "Enter base currency"
read base
echo "Enter target currency"
read currency
echo "Enter amount"
read amount

curl -X 'GET' $CURRAPI\&base\=$base\&symbols\=$currency\&amount=$amount | printf "\n$amount amount of $base : $(grep -Po "\brates\":{\"$currency\":\K\d+.\d+") $currency \n"

exit
