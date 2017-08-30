#!/bin/bash
#echo "hello"
MYUSER=`whoami` 
#echo ${MYUSER}

declare -i i=1
while ((i<=1))
do
  sleep 1
  #echo $i
  let i++
done

MYPID1=`ps -aux | grep "mplayer /home/pi/Music/" | awk {'print $2'}`
MYPID2=`ps -aux | grep "/home/pi/sourcecode/fuzhuscript/voice_ctl/music.py" | awk {'print $2'}`

kill  -15 $MYPID1 $MYPID2
kill  -9 $MYPID1 $MYPID2



