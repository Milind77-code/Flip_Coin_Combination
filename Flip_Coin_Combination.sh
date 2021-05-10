#!/bin/bash
#UserCase_1
hcount=0
tcount=0
echo "---------Wecome to Flip Coin Combination Program----------"
function headTailGenerate(){
rn=$((RANDOM%2))
	if [ $rn -eq 0 ]
   then
     	tcount=$(($tcount+1))
   else
   	hcount=$(($hcount+1))
   fi
}
headTailGenerate
echo $hcount $tcount
