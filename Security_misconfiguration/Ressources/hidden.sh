#!/bin/bash

BASE="http://10.11.200.146/.hidden/"

PAGE_1=$(curl -s $BASE)

# First we need to parse and get every directory name
for LINE_1 in $PAGE_1;
do
	if [ ${#LINE_1} -ne 0 ]; then
		DIR_1=$(echo $LINE_1 | perl -ne 'print $1 if /href=\"(.*)\/\"/')

		SIZE_1=${#DIR_1} 
		# Check if match got a return
		if [ ${#DIR_1} -eq 26 ]; then

			# We list the second directory names
			PAGE_2=$(curl -s $BASE$DIR_1/)

			for LINE_2 in $PAGE_2;
			do
				if [ ${#LINE_2} -ne 0 ]; then
					DIR_2=$(echo $LINE_2 | perl -ne 'print $1 if /href=\"(.*)\/\"/')

					SIZE_2=${#DIR_2} 

					# Check if match got a return
					if [ ${#DIR_2} -eq 26 ]; then

						# We list the third directory names
						PAGE_3=$(curl -s $BASE$DIR_1/$DIR_2/)

						for LINE_3 in $PAGE_3;
						do
							if [ ${#LINE_3} -ne 0 ]; then
								DIR_3=$(echo $LINE_3 | perl -ne 'print $1 if /href=\"(.*)\/\"/')
								SIZE_3=${#DIR_3} 

								# Check if match got a return
								if [ ${#DIR_3} -eq 26 ]; then

									# We list the third directory names
									README=$(curl -s $BASE$DIR_1/$DIR_2/$DIR_3/README)
									echo "PAGE: $README"
								fi
							fi
						done
					fi
				fi
			done
		fi
	fi
done
