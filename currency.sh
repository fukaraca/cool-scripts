#!/bin/bash

CURRAPI=https://api.exchangerate.host/latest

echo "Enter base currency"
read base
echo "Enter target currency"
read currency

curl -X 'GET' $CURRAPI\?base\=$base\&symbols\=$currency 
echo ""
exit
