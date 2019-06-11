value1=$1
if [ -z $1]; then
	value1=25
fi
value2=$2
if [ -z $2]; then
	value2=5
fi
for i in `seq $value1 -1 1`; do
    clear
    echo $i | toilet -f future --filter rainbow
    sleep 1m
done
aplay sound.wav &
./pom.sh $value2 $value1
