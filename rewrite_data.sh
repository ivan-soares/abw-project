#!/bin/bash
#
	echo
	echo " +++ Starting script to rewrite data file +++"
	echo

	inpfile=$1
	outfile=$2

	echo
	echo " ... will read file $inpfile"
	echo " ... and write file $outfile"
	echo

	#names='"Date Time","WDIR (degT)","WSPD (m/s)","WVHT (m)","DPD (sec)","APD (sec)","MWD (degT)","PRES (hPa)","ATMP (degC)","WTMP (degC)"'
	names='"Date Time","WDIR (degT)","WSPD (m/s)","WVHT (m)","DPD (sec)","APD (sec)","PRES (hPa)"'

	#tac $inpfile | sed -e 's/MM/-9999./g'> tmp
	awk '{if($5 == 40) print $0}' $inpfile > tmp

	echo $names > $outfile
	#awk '{printf "%02d.%02d.%4d %02d:%02d,%.2f,%.2f,%.2f,%.1f,%.1f,%.2f,%.1f,%.2f,%.2f\n", \
#		$3,$2,$1,$4,$5,$6,$7,$9,$10,$11,$12,$13,$14,$15}' tmp >> $outfile

	awk '{printf "%02d.%02d.%4d %02d:%02d,%.2f,%.2f,%.2f,%.1f,%.1f,%.1f\n", \
                $3,$2,$1,$4,$5,$6,$7,$9,$10,$11,$13}' tmp >> $outfile	
	rm tmp

        echo
        echo " +++ End of script +++"
        echo
