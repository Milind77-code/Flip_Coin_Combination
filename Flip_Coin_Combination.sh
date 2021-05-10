#!/bin/bash
#UserCase_3
hcount=0
tcount=0
declare -A singlet
declare -A doublet
singlet=([H]=0 [T]=0)
doublet=([HH]=0 [HT]=0 [TH]=0 [TT]=0)
echo "--------Wecome to FlipCoin Combination Program---------"
function singletheadTailGenerate(){
echo "           ------Singlet Combination-------            "
	while [ ${singlet[H]} -ne 21 -a ${singlet[H]} -ne 21 ]
	do
		rn=$((RANDOM%2))
       		if [ $rn -eq 0 ]
       		then
			singlet[T]=$((singlet[T] + 1))
       		else
			singlet[H]=$((singlet[H] + 1))
       		fi
	done
echo " ${singlet[@]}"
echo " Total = $((singlet[H] + singlet[T]))"
echo " Heads Percentage = $(( (singlet[H] * 100 )/ (singlet[H] + singlet[T]) ))"
echo " Tails Percentage = $(( (singlet[T] * 100 )/ (singlet[H] + singlet[T]) ))"
}

#singletheadTailGenerate

function doubletheadTailGenerate(){
echo "         -------Doublet Combination-------              "
	while [ ${doublet[HH]} -ne 21 -a ${doublet[HT]} -ne 21 -a ${doublet[TH]} -ne 21 -a ${doublet[TT]} -ne 21 ]
	do
		rn1=$((RANDOM%2))
		rn2=$((RANDOM%2))
       		if [ $rn1 -eq 0 -a $rn2 -eq 0 ]
       		then
			doublet[TT]=$((doublet[TT] + 1))
       		elif [ $rn1 -eq 0 -a $rn2 -eq 1 ]
		then
			doublet[TH]=$((doublet[TH] + 1))
       		elif [ $rn1 -eq 1 -a $rn2 -eq 0 ]
		then
			doublet[HT]=$((doublet[HT] + 1))
       		elif [ $rn1 -eq 1 -a $rn2 -eq 1 ]
		then
			doublet[HH]=$((doublet[HH] + 1))
       		fi
	done
dtotal=$((doublet[HH] + doublet[HT] + doublet[TH] + doublet[TT]))
echo " ${doublet[@]}"
echo " Total = $dtotal"
echo " HH Percentage = $(( (${doublet[HH]} * 100 ) / $dtotal ))"
echo " HT Percentage = $(( (${doublet[HT]} * 100 ) / $dtotal))"
echo " TH Percentage = $(( (${doublet[TH]} * 100 ) / $dtotal))"
echo " TT Percentage = $(( (${doublet[TT]} * 100 ) / $dtotal))"
}
doubletheadTailGenerate
