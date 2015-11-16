#! /bin/tcsh -f

rm station?/*

mkdir spectra station1 station2 station3 station4 station5 spectra/station1 spectra/station2 spectra/station3 spectra/station4 spectra/station5 
cp ../../degelen_ph_vel/station1/*.sac.ph station1
cp ../../degelen_ph_vel/station2/*.sac.ph station2
cp ../../degelen_ph_vel/station3/*.sac.ph station3
cp ../../degelen_ph_vel/station4/*.sac.ph station4
cp ../../degelen_ph_vel/station5/*.sac.ph station5

rm all_events/*/begin_zero/filtered/unwrapped/equalized/*
rm all_events/*/begin_zero/filtered/unwrapped/*
rm all_events/*/begin_zero/filtered/*
rm all_events/*/begin_zero/*
rm all_events/*/*

cp ../../Degelen_reduced/05-06-87/begin_zero/filtered/unwrapped/* all_events/05-06-87/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/07-17-87/begin_zero/filtered/unwrapped/* all_events/07-17-87/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/10-04-89/begin_zero/filtered/unwrapped/* all_events/10-04-89/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/10-16-87/begin_zero/filtered/unwrapped/* all_events/10-16-87/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/10-18-88/begin_zero/filtered/unwrapped/* all_events/10-18-88/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/11-23-88/begin_zero/filtered/unwrapped/* all_events/11-23-88/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/12-15-71/begin_zero/filtered/unwrapped/* all_events/12-15-71/begin_zero/filtered/unwrapped
cp ../../Degelen_reduced/12-20-87/begin_zero/filtered/unwrapped/* all_events/12-20-87/begin_zero/filtered/unwrapped

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro phased_loop
q
mjk0

cd spectra
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro fandr
q
mjk0
 
cd ../all_events

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro big_phased_loop
q
mjk0


plotstationspectra.csh


foreach n ( 05-06-87 10-18-88  07-17-87 11-23-88 10-04-89 12-15-71 10-16-87 12-20-87 )
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
cd $n/begin_zero/filtered/unwrapped
macro ../../../../../plot_avg
sgftops *.sgf average_src.ps 2 s
0
0
0
1
SC rm *.sgf
TITLE " Degelen Source Spectra $n"
YLABEL " Circles "
XLABEL " Frequency @( Hz @) "
xlim .5 2
ylim 0 2
color r i list r blu bla g c ma
symbol 2 i size .005
Readerr nofiles warning
picks off
fileid on t n l ul
qdp off
r *src
p2

sgftops *.sgf all_src.ps 2 s
0
0
0
1
SC rm *.sgf


q
mjk0
end


cd station_plots

foreach n ( station1 station2 station3 station4 station5 )
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
cd $n
macro ../../../plot_avg
sgftops *.sgf average_src.ps 2 s
0
0
0
1
SC rm *.sgf
q
mjk0
end

cd ../../most_events

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
macro medium_phased_loop
q
mjk0


plotstationspectra.csh


foreach n ( 05-06-87  07-17-87 11-23-88 10-04-89 10-16-87 12-20-87 )
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
cd $n/begin_zero/filtered/unwrapped
macro ../../../../../plot_avg
sgftops *.sgf average_src.ps 2 s
0
0
0
1
SC rm *.sgf
TITLE " Degelen Source Spectra $n"
YLABEL " Circles "
XLABEL " Frequency @( Hz @) "
xlim .5 2
ylim 0 2
color r i list r blu bla g c ma
symbol 2 i size .005
Readerr nofiles warning
picks off
fileid on t n l ul
qdp off
r *src
p2

sgftops *.sgf all_src.ps 2 s
0
0
0
1
SC rm *.sgf


q
mjk0
end


cd station_plots

foreach n ( station1 station2 station3 station4 station5 )
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
cd $n
macro ../../../plot_avg
sgftops *.sgf average_src.ps 2 s
0
0
0
1
SC rm *.sgf
q
mjk0
end

cd ..

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
r */*/*/*/source_average.s
SC rm *.sgf
TITLE " Degelen Source Spectra Event Averages"
@(Divisions = 0.2@)"
XLABEL " Frequency @( Hz @) "
xlim .5 2
ylim 0 2
color r i list r blu bla g c ma
ydiv i .2
ygrid on
Readerr nofiles warning
picks off
fileid on t l kevnm
fileid l ul
qdp off
bd sgf
p2

sgftops *.sgf event_averages.ps 2 s
0
0
0
1
SC rm *.sgf

q
mjk0

cd ../spectra



mkdir 05-06-87 10-18-88  07-17-87 11-23-88 10-04-89 12-15-71 10-16-87 12-20-87 
cp station?/05-06-87* 05-06-87
cp station?/10-18-88* 10-18-88
cp station?/07-17-87* 07-17-87
cp station?/11-23-88* 11-23-88
cp station?/10-04-89* 10-04-89
cp station?/12-15-71* 12-15-71
cp station?/10-16-87* 10-16-87
cp station?/12-20-87* 12-20-87



foreach n ( station1 station2 station3 station4 station5  05-06-87 10-18-88  07-17-87 11-23-88 10-04-89 12-15-71 10-16-87 12-20-87)
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
message "spectra - $n"
cd $n
macro ../../plot_avg
sgftops *.sgf average_src.ps 2 s
0
0
0
1
SC rm *.sgf
TITLE " Degelen Source Spectra $n"
YLABEL " Circles "
XLABEL " Frequency @( Hz @) "
xlim .5 2
ylim 0 2
color r i list r blu bla g c ma
symbol 2 i size .005
Readerr nofiles warning
picks off
fileid on t n l ul
qdp off
r *src
p2

sgftops *.sgf all_src.ps 2 s
0
0
0
1
SC rm *.sgf



q
mjk0
end



cd ..


*pop_syn.csh
