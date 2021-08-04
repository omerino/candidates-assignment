#!/bin/bash
#add fix to exercise6-fix here

### determine source and destination ###

case $HOSTNAME in

	"server1") src="server1" dst="server2" ;;

	"server2") src="server2" dst="server1" ;;

	*) echo "$HOSTNAME is not in our database" ;;
esac


### Testing ruslts (disblae comment out on while testing)  ###
#echo $dst

### declaring variables ###
dstpath=${!#}
totalbytes=0

### looping thorugh all argemnutes and running scp commnad against each of them execpt the last one###

for p in "$@"
do
	if [[ $p != $dstpath ]];
	then
	scp -r $p vagrant@$dst:$dstpath >> /dev/null 2>&1
	size=$(stat -c%s $p)
	((totalbytes += $size))
fi
done

echo "$totalbytes"
