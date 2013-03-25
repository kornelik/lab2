#!/bin/bash
wget -q -O weather.dump http://www.weathercity.com/by/minsk
sed 's/<[^<>]*>//g' weather.dump > weather.txt
sed ':a;N;$!ba;s/\n/@/g' weather.txt > weather.line
