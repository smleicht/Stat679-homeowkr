#!/bin/bash


# assumes that user of this program will have all of the data from the SNaQ analysis in one directory 
# and that this main directory contains  "log" and "out" subdirectories with
# the respective xxx_snaq.log and xxx_snaq.out files

# move into the log directory containing half of the analyses we want to pull information from for our summary
cd log
echo "analysis"",""h"",""CPUtime"
# prints the label for each column of the table 

for i in bT1* newtry* *_snaq*;
    do
    # log files contains hmax information and out files contain CPUtime information
    # looks for variable i in all analyses that start with bT1, newtry, and contain _snaq in the file names
     
     
     Logvar=$(grep -oE "hmax.=.[0-9]" $i)
     Outvar=$(grep "time" ../out/${i%.log}.out)

     # above commands go to the respective directory where the information we are searching for is stored
     # command searches for hmax value in all of the log files and the CPUtime in all of the outfiles
     # information for each command will be store in variables Logvar for hmax and Outvar for CPUtime
     
     echo ${i%.log}","${Logvar:7:7}","${Outvar:15:15}
    
    # prints the name of the analysis only, removes the "log/out" information, then prints a comma
    # then prints the "hmax" for each analysis, and then prints the CPUtime for each analysis
    # results 
    
     done


# resulting csv file should look like this:

# analysis,h,CPUtime
# bT1,0,103354.76038173
# newtry1,1,88579.306341032
# net1_snaq,1,11648.984309726
# timetest01_snaq,1,16688.01510346
# timetest02_snaq,1,37137.96354747
# timetest03_snaq,1,12630.994448551
# timetest04_snaq,1,21942.346502542
# timetest05_snaq,1,23949.375026384
# timetest06_snaq,1,39287.796202476
# timetest07_snaq,1,29822.147601027
# timetest08_snaq,1,51589.342317181
# timetest09_snaq,1,34831.465925074
# timetest10_snaq,1,29394.463493788
# timetest11_snaq,1,67926.502059791
# timetest12_snaq,1,18935.630572383
# timetest13_snaq,1,31456.993676184