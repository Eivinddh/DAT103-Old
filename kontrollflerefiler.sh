#!bin/bash

for((i = 0; i < "$#"; i++)); do
	$(sh ./filkontroll.hs 60 $i)
done
