#!/bin/bash
wget -q -O weather.dump http://www.weathercity.com/by/minsk
sed 's/<[^<>]*>//g' weather.dump > weather.txt
sed ':a;N;$!ba;s/\n/@/g' weather.txt > weather.line
grep -w -Po 'Temperature:(.*)C@Dew' weather.line > first.line
grep -Po '(\-|\+){0,1}\d+' first.line > second.line
