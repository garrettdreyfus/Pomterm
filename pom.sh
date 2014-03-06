value1=25
if [ ! -z $1]; then
	value1=$1
fi
value2=5
if [ ! -z $1]; then
	value2=$2
fi
for i in `seq $value1 -1 1`; do
    clear
    echo $i | figlet -c
    sleep 1m
done
aplay sound.wav &
./pom $value2 $value1
