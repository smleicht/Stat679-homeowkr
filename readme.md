# `SummarizeSNaQres.sh` User Guide

This shell script is intended to build a summarizing table in `csv` format from the `out` and `log` files that the SNaQ Analysis created

The input for `summarizeSNaQres.sh` requires a directory that contains all of the output data from the SNaQ Analysis. Within this directory, there must be subdirectories named `log` and `out` that contain the numerically labelled `xxx.log` and `xxx.out` files, respectively. 

The input files `timetest` files must be numbered `01, 02, 03 ... 13` so that when the files are listed alphabetically file `03` will be listed before file `13`.

Output for `summarizeSNaQres.sh` will be a `csv` table that is composed of :

* "analysis": the file name root ("xxx")
* "h": the maximum number of hybridizations allowed during the analysis: hmax
* "CPUtime": total CPU time, or "Elapsed time"

With the first line of the table as this `analysis,h,CPUtime`
