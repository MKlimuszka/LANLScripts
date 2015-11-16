#! /bin/tcsh -f
mkdir by_station
//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0
Readerr nofiles warning
xlim 0 25
xgrid on
xdiv i 1
picks off
fileid t n
qdp off

*******************************************************************************
SC mkdir by_station/station1

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z132-pert.ph 11-23-88/begin_zero/filtered/unwrapped/equalized/z141-pert.ph 07-17-87/begin_zero/filtered/unwrapped/equalized/z145-pert.ph 10-04-89/begin_zero/filtered/unwrapped/equalized/z160-pert.ph  12-20-87/begin_zero/filtered/unwrapped/equalized/z132-pert.ph

WRITE DIR by_station/station1 05-06-87.ph 11-23-88.ph 07-17-87.ph 10-04-89.ph 12-20-87.ph

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z132-pert.am 11-23-88/begin_zero/filtered/unwrapped/equalized/z141-pert.am 07-17-87/begin_zero/filtered/unwrapped/equalized/z145-pert.am 10-04-89/begin_zero/filtered/unwrapped/equalized/z160-pert.am 12-20-87/begin_zero/filtered/unwrapped/equalized/z132-pert.am

WRITE DIR by_station/station1 05-06-87.am  11-23-88.am 07-17-87.am 10-04-89.am  12-20-87.am

r 05-06-87/begin_zero/filtered/unwrapped/equalized/z132-pert.sac 11-23-88/begin_zero/filtered/unwrapped/equalized/z141-pert.sac 07-17-87/begin_zero/filtered/unwrapped/equalized/z145-pert.sac 10-04-89/begin_zero/filtered/unwrapped/equalized/z160-pert.sac 12-20-87/begin_zero/filtered/unwrapped/equalized/z132-pert.sac

WRITE DIR by_station/station1 05-06-87.sac 11-23-88.sac 07-17-87.sac 10-04-89.sac  12-20-87.am

bd sgf
p1
sgftops *.sgf eq-station_1.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps by_station/station1
***********************************************************************************
*******************************************************************************
SC mkdir by_station/station2

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z169-pert.ph 12-20-87/begin_zero/filtered/unwrapped/equalized/z169-pert.ph 11-23-88/begin_zero/filtered/unwrapped/equalized/z175-pert.ph 07-17-87/begin_zero/filtered/unwrapped/equalized/z180-pert.ph 10-04-89/begin_zero/filtered/unwrapped/equalized/z197-pert.ph  

WRITE DIR by_station/station2 05-06-87.ph 12-20-87.ph 11-23-88.ph 07-17-87.ph 10-04-89.ph  

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z169-pert.am 12-20-87/begin_zero/filtered/unwrapped/equalized/z169-pert.am 11-23-88/begin_zero/filtered/unwrapped/equalized/z175-pert.am 07-17-87/begin_zero/filtered/unwrapped/equalized/z180-pert.am 10-04-89/begin_zero/filtered/unwrapped/equalized/z197-pert.am  

WRITE DIR by_station/station2  05-06-87.am 12-20-87.am 11-23-88.am 07-17-87.am 10-04-89.am  

r 05-06-87/begin_zero/filtered/unwrapped/equalized/z169-pert.sac 12-20-87/begin_zero/filtered/unwrapped/equalized/z169-pert.sac 11-23-88/begin_zero/filtered/unwrapped/equalized/z175-pert.sac 07-17-87/begin_zero/filtered/unwrapped/equalized/z180-pert.sac 10-04-89/begin_zero/filtered/unwrapped/equalized/z197-pert.sac 
WRITE DIR by_station/station2  05-06-87.sac 12-20-87.sac 11-23-88.sac 07-17-87.sac 10-04-89.sac 

bd sgf
p1
sgftops *.sgf eq-station_2.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps by_station/station2
***********************************************************************************
*******************************************************************************
SC mkdir by_station/station3

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z220-pert.ph 12-20-87/begin_zero/filtered/unwrapped/equalized/z220-pert.ph 11-23-88/begin_zero/filtered/unwrapped/equalized/z223-pert.ph 07-17-87/begin_zero/filtered/unwrapped/equalized/z230-pert.ph 10-04-89/begin_zero/filtered/unwrapped/equalized/z247-pert.ph 

WRITE DIR by_station/station3  05-06-87.ph 12-20-87.ph 11-23-88.ph 07-17-87.ph 10-04-89.ph 

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z220-pert.am 12-20-87/begin_zero/filtered/unwrapped/equalized/z220-pert.am 11-23-88/begin_zero/filtered/unwrapped/equalized/z223-pert.am 07-17-87/begin_zero/filtered/unwrapped/equalized/z230-pert.am 10-04-89/begin_zero/filtered/unwrapped/equalized/z247-pert.am 

WRITE DIR by_station/station3  05-06-87.am 12-20-87.am 11-23-88.am 07-17-87.am 10-04-89.am

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z220-pert.sac 12-20-87/begin_zero/filtered/unwrapped/equalized/z220-pert.sac 11-23-88/begin_zero/filtered/unwrapped/equalized/z223-pert.sac 07-17-87/begin_zero/filtered/unwrapped/equalized/z230-pert.sac 10-04-89/begin_zero/filtered/unwrapped/equalized/z247-pert.sac 

WRITE DIR by_station/station3 05-06-87.sac 12-20-87.sac 11-23-88.sac 07-17-87.sac 10-04-89.sac 

bd sgf
p1
sgftops *.sgf eq-station_3.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps by_station/station3
***********************************************************************************
*******************************************************************************
SC mkdir by_station/station4

r 05-06-87/begin_zero/filtered/unwrapped/equalized/z297-pert.ph 12-20-87/begin_zero/filtered/unwrapped/equalized/z297-pert.ph 11-23-88/begin_zero/filtered/unwrapped/equalized/z299-pert.ph 07-17-87/begin_zero/filtered/unwrapped/equalized/z306-pert.ph 10-04-89/begin_zero/filtered/unwrapped/equalized/z324-pert.ph 

WRITE DIR by_station/station4 05-06-87.ph 12-20-87.ph 11-23-88.ph 07-17-87.ph 10-04-89.ph 

r 05-06-87/begin_zero/filtered/unwrapped/equalized/z297-pert.am 12-20-87/begin_zero/filtered/unwrapped/equalized/z297-pert.am 11-23-88/begin_zero/filtered/unwrapped/equalized/z299-pert.am 07-17-87/begin_zero/filtered/unwrapped/equalized/z306-pert.am 10-04-89/begin_zero/filtered/unwrapped/equalized/z324-pert.am 

WRITE DIR by_station/station4 05-06-87.am 12-20-87.am 11-23-88.am 07-17-87.am 10-04-89.am 


r 05-06-87/begin_zero/filtered/unwrapped/equalized/z297-pert.sac 12-20-87/begin_zero/filtered/unwrapped/equalized/z297-pert.sac 11-23-88/begin_zero/filtered/unwrapped/equalized/z299-pert.sac 07-17-87/begin_zero/filtered/unwrapped/equalized/z306-pert.sac 10-04-89/begin_zero/filtered/unwrapped/equalized/z324-pert.sac 

WRITE DIR by_station/station4 05-06-87.sac 12-20-87.sac 11-23-88.sac 07-17-87.sac 10-04-89.sac

bd sgf
p1
sgftops *.sgf eq-station_4.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps by_station/station4
***********************************************************************************
*******************************************************************************
SC mkdir by_station/station5

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z392-pert.ph 12-20-87/begin_zero/filtered/unwrapped/equalized/z392-pert.ph  11-23-88/begin_zero/filtered/unwrapped/equalized/z393-pert.ph

WRITE DIR by_station/station5  05-06-87.ph 12-20-87.ph  11-23-88.ph

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z392-pert.am 12-20-87/begin_zero/filtered/unwrapped/equalized/z392-pert.am   11-23-88/begin_zero/filtered/unwrapped/equalized/z393-pert.am

WRITE DIR by_station/station5  05-06-87.am 12-20-87.am 11-23-88.am

r  05-06-87/begin_zero/filtered/unwrapped/equalized/z392-pert.sac 12-20-87/begin_zero/filtered/unwrapped/equalized/z392-pert.sac  11-23-88/begin_zero/filtered/unwrapped/equalized/z393-pert.sac

WRITE DIR by_station/station5 05-06-87.sac 12-20-87.sac 11-23-88.sac

bd sgf
p1
sgftops *.sgf eq-station_5.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps by_station/station5
***********************************************************************************

q
mjk0
mkdir by_station/all_plots
mkdir ../degelen_ph_vel_pass_2 ../degelen_ph_vel_pass_2/station1 ../degelen_ph_vel_pass_2/station2 ../degelen_ph_vel_pass_2/station3 ../degelen_ph_vel_pass_2/station4 ../degelen_ph_vel_pass_2/station5
cp by_station/*/*ps by_station/all_plots
cp by_station/station1/* ../degelen_ph_vel_pass_2/station1
cp by_station/station2/* ../degelen_ph_vel_pass_2/station2
cp by_station/station3/* ../degelen_ph_vel_pass_2/station3
cp by_station/station4/* ../degelen_ph_vel_pass_2/station4
cp by_station/station5/* ../degelen_ph_vel_pass_2/station5
rm ../degelen_ph_vel_pass_2/*/*ps

mkdir ../degelen_gr_vel_pass_2 ../degelen_gr_vel_pass_2/station1 ../degelen_gr_vel_pass_2/station2 ../degelen_gr_vel_pass_2/station3 ../degelen_gr_vel_pass_2/station4 ../degelen_gr_vel_pass_2/station5
cp by_station/*/*ps by_station/all_plots
cp by_station/station1/* ../degelen_gr_vel_pass_2/station1
cp by_station/station2/* ../degelen_gr_vel_pass_2/station2
cp by_station/station3/* ../degelen_gr_vel_pass_2/station3
cp by_station/station4/* ../degelen_gr_vel_pass_2/station4
cp by_station/station5/* ../degelen_gr_vel_pass_2/station5
rm ../degelen_gr_vel_pass_2/*/*ps

