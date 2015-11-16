#! /bin/tcsh -f
mkdir by_station
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0



cd 05-06-87/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize050687
cd ../../../..

cd 12-20-87/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize050687
cd ../../../..

cd 07-17-87/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize071787
cd ../../../..

cd 10-04-89/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize100489
cd ../../../..

cd 10-18-88/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize101888
cd ../../../..

cd 11-23-88/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize112388
cd ../../../..

cd 10-16-87/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize101687
cd ../../../..

cd 12-15-71/begin_zero/filtered/unwrapped
sc rm equalized/*
macro ../../../../../../scripts/my_scripts/equalizations/equalize121571
cd ../../../..
q
mjk0
