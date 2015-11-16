#! /bin/tcsh -f

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro unwraploop
q
mjk0

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro add.macro
q
mjk0

python alphatofreq.py

cd frequency_files
rm v*


//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro ../velcalc
q
mjk0

freqplot.csh

