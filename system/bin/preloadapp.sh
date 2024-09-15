#! /system/bin/sh

myPath="/system/media/premedia";
myFlag=1;


while(($myFlag))
do
	sleep 2;
	echo "wait " 
bootCompleted=$(getprop sys.boot_completed 0);
	echo "$bootCompleted"
if [ $bootCompleted -eq 1 ];then
    myFlag=0;
else
    myFlag=1;
fi
done

sleep 1;

echo "sdcard had already mount" 

my="/storage/emulated/0/";
echo $my >> /storage/emulated/0/log.log;

first_boot=$(getprop persist.dq_first_boot 0);
echo "$first_boot" 


if [ $first_boot -eq 0 ];then
  cp -r $myPath $my;
  setprop persist.dq_first_boot 1;
  echo "ok ok" 
fi