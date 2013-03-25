#!/bin/bash
wget -q -O weather.dump http://www.weathercity.com/by/minsk
sed 's/<[^<>]*>//g' weather.dump > weather.txt
