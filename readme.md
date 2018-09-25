# `SummarizeSNaQres.sh` User Guide

This shell script is intended to build a summarizing table in `csv` format from the `out` and `log` files that the SNaQ Analysis created

The input for `summarizeSNaQres.sh` requires a directory that contains all of the output data from the SNaQ Analysis. Within this directory, there must be subdirectories named `log` and `out` that contain the numerically labelled `xxx.log` and `xxx.out` files, respectively. 

The input files `timetest` files must be numbered `01, 02, 03 ... 13` so that when the files are listed alphabetically file `03` will be listed before file `13`.

Output for `summarizeSNaQres.sh` will be a `csv` table that is composed of :

<<<<<<< HEAD
* "analysis": the file name root ("xxx")
* "h": the maximum number of hybridizations allowed during the analysis: hmax
* "CPUtime": total CPU time, or "Elapsed time"
=======
| topic | exercise 1 | exercise 2 | exercise 3 |
|:------|:-----------|:-----------|:-----------|
| code performance      | 3 |  |  |
| coding strategy       | 3 |  |  |
| coding style          | 3 |  |  |
| project documentation | 3 |  |  |
| work submission       | 3 |  |  |

## solution

/Users/sarahleichter/Desktop/Stat679/hw1-smleicht-master/hw1-smleicht

# move into the out directory and make a new directory called original_datatfiles and perserve all orignial timetest data files by renaming them "original_timetest#_snaq.out"

cd out
mkdir original_datafiles

for datafile in timetest*;
    do 
    cp $datafile original_$datafile
    for datafile in original_t*
        do
        mv $datafile original_datafiles
        done
    done

# output /Users/sarahleichter/Desktop/Stat679/hw1-smleicht-master/out/original_data/
##creates a directory containing 13 files named original_timetest#_snaq.out where # is the original number for the file

# move into the log directory and make a new directory called original_datafiles and perserve all orignial timetest data files by renaming them "original_timetest#_snaq.log"
cd ..
cd log
mkdir original_datafiles

for datafile in timetest*;
    do 
    cp $datafile original_$datafile
    for datafile in original_t*
        do
        mv $datafile original_datafiles
        done
    done

# output /Users/sarahleichter/Desktop/Stat679/hw1-smleicht-master/log/original_data/

# creates a directory containing 13 files named original_timetest#_snaq.log where # is the original number for the file


# changes numerically labelled timetest files (1-9) to (01-09) so when files are listed alphabetically so file timetest01_snaq.log will be listed before timetest13_snaq.log
# stay in log directory
# script adds "0" before numbers (1-9) in timetest file names. Resulting files should be renamed timetest0(1-9)_snaq.log

for datafile in t*t?_snaq.log;
          do 
         VAR=${datafile:8:15}
         mv $datafile ${datafile%?_*}0$VAR
         done 

# output /Users/sarahleichter/Desktop/Stat679/hw1-smleicht-master/log/
# creates a directory containing 13 files named original_timetest#_snaq.out where # is the original number for the file starting with 01


# move into out directory 
cd ..
cd out

# script adds "0" before numbers (1-9) in timetest file names. Resulting files should be renamed timetest0(1-9)_snaq.out

for datafile in t*t?_snaq.out;
         do 
         VAR=${datafile:8:15}
         mv $datafile ${datafile%?_*}0$VAR
         done


# output /Users/sarahleichter/Desktop/Stat679/hw1-smleicht-master/out
# creates a directory containing 13 files named original_timetest#_snaq.out where # is the original number for the file starting with 01
>>>>>>> 467ca2f0f9f9a8560adcc74ae79d7b0700eb5925

With the first line of the table as this `analysis,h,CPUtime`
