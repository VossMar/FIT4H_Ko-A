#!/bin/bash

read -p "Geben Sie die zu findende Datei ein: " eingabe
if [[ -e $eingabe ]]
then
	echo "Datei: ${eingabe} gefunden"
else
	echo "Datei: ${eingabe} nicht gefunden. Wird neu angelegt!"
	read -p "Soll die Datei neu angelegt werden?(y/n): " zust
fi
if [[ $zust = 'y' ]]
then
	touch $eingabe
	ls -l
fi
