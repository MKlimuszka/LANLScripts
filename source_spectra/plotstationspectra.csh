#! /bin/tcsh -f

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0

SC mkdir station_plots

YLABEL " Circles "
XLABEL " Frequency @( Hz @) "
xlim .5 2
ylim 0 2
color r i list r blu bla g c ma
symbol 2 i size .005
Readerr nofiles warning
picks off
fileid t l kevnm
fileid l ul
qdp off

echo w o m p
SETBB ppath begin_zero/filtered/unwrapped/


cd 05-06-87/%ppath%
r *src
chnhdr kevnm _05-06-87
w over
cd ../../../../
cd 07-17-87/%ppath%
r *src
chnhdr kevnm _07-17-87
w over
cd ../../../../
cd 10-04-89/%ppath%
r *src
chnhdr kevnm _10-04-89
w over
cd ../../../../
cd 10-16-87/%ppath%
r *src
chnhdr kevnm _10-16-87
w over
cd ../../../../
cd 10-18-88/%ppath%
r *src
chnhdr kevnm _10-18-88
w over
cd ../../../../
cd 11-23-88/%ppath%
r *src
chnhdr kevnm _11-23-88
w over
cd ../../../../
cd 12-15-71/%ppath%
r *src
chnhdr kevnm _12-15-71
w over
cd ../../../../
cd 12-20-87/%ppath%
r *src
chnhdr kevnm _12-20-87
w over
cd ../../../../

*******************************************************************************
SC mkdir station_plots
SC mkdir station_plots/station1

SETBB dis1 132
SETBB dis2 145
SETBB dis3 160
SETBB dis4 199
SETBB dis5 110
SETBB dis6 141
SETBB dis7 074
SETBB dis8 132

cd 05-06-87/%ppath%
r z%dis1%_filtered.phsrc
cd ../../../../
cd 07-17-87/%ppath%
r more z%dis2%_filtered.phsrc
cd ../../../../
cd 10-04-89/%ppath%
r more z%dis3%_filtered.phsrc
cd ../../../../
cd 10-16-87/%ppath%
r more z%dis4%_filtered.phsrc
cd ../../../../
cd 10-18-88/%ppath%
r more z%dis5%_filtered.phsrc
cd ../../../../
cd 11-23-88/%ppath%
r more z%dis6%_filtered.phsrc
cd ../../../../
cd 12-15-71/%ppath%
r more z%dis7%_filtered.phsrc
cd ../../../../
cd 12-20-87/%ppath%
r more z%dis8%_filtered.phsrc
cd ../../../../

W OVER DIR station_plots/station1

bd sgf
TITLE "Degelen Source Spectra Station 1"
p2
sgftops *.sgf station_1.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps station_plots
*************************************************************************************
*******************************************************************************
SC mkdir station_plots/station2

SETBB dis1 169
SETBB dis2 180
SETBB dis3 197
SETBB dis4 230
SETBB dis5 130
SETBB dis6 175
SETBB dis7 111
SETBB dis8 169

cd 05-06-87/%ppath%
r z%dis1%_filtered.phsrc
cd ../../../../
cd 07-17-87/%ppath%
r more z%dis2%_filtered.phsrc
cd ../../../../
cd 10-04-89/%ppath%
r more z%dis3%_filtered.phsrc
cd ../../../../
cd 10-16-87/%ppath%
r more z%dis4%_filtered.phsrc
cd ../../../../
cd 10-18-88/%ppath%
r more z%dis5%_filtered.phsrc
cd ../../../../
cd 11-23-88/%ppath%
r more z%dis6%_filtered.phsrc
cd ../../../../
cd 12-15-71/%ppath%
r more z%dis7%_filtered.phsrc
cd ../../../../
cd 12-20-87/%ppath%
r more z%dis8%_filtered.phsrc
cd ../../../../

W OVER DIR station_plots/station2

bd sgf
TITLE "Degelen Source Spectra Station 2"
p2
sgftops *.sgf station_2.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps station_plots
*************************************************************************************
*******************************************************************************
SC mkdir station_plots/station3


SETBB dis1 220
SETBB dis2 230
SETBB dis3 247
SETBB dis4 276
SETBB dis5 173
SETBB dis6 223
SETBB dis7 162
SETBB dis8 220

cd 05-06-87/%ppath%
r z%dis1%_filtered.phsrc
cd ../../../../
cd 07-17-87/%ppath%
r more z%dis2%_filtered.phsrc
cd ../../../../
cd 10-04-89/%ppath%
r more z%dis3%_filtered.phsrc
cd ../../../../
cd 10-16-87/%ppath%
r more z%dis4%_filtered.phsrc
cd ../../../../
cd 10-18-88/%ppath%
r more z%dis5%_filtered.phsrc
cd ../../../../
cd 11-23-88/%ppath%
r more z%dis6%_filtered.phsrc
cd ../../../../
cd 12-15-71/%ppath%
r more z%dis7%_filtered.phsrc
cd ../../../../
cd 12-20-87/%ppath%
r more z%dis8%_filtered.phsrc
cd ../../../../
W OVER DIR station_plots/station3

bd sgf
TITLE "Degelen Source Spectra Station 3"
p2
sgftops *.sgf station_3.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps station_plots
*************************************************************************************
*******************************************************************************
SC mkdir station_plots/station4


SETBB dis1 297
SETBB dis2 306
SETBB dis3 324
SETBB dis4 348
SETBB dis5 244
SETBB dis6 299
SETBB dis7 239
SETBB dis8 297

cd 05-06-87/%ppath%
r z%dis1%_filtered.phsrc
cd ../../../../
cd 07-17-87/%ppath%
r more z%dis2%_filtered.phsrc
cd ../../../../
cd 10-04-89/%ppath%
r more z%dis3%_filtered.phsrc
cd ../../../../
cd 10-16-87/%ppath%
r more z%dis4%_filtered.phsrc
cd ../../../../
cd 10-18-88/%ppath%
r more z%dis5%_filtered.phsrc
cd ../../../../
cd 11-23-88/%ppath%
r more z%dis6%_filtered.phsrc
cd ../../../../
cd 12-15-71/%ppath%
r more z%dis7%_filtered.phsrc
cd ../../../../
cd 12-20-87/%ppath%
r more z%dis8%_filtered.phsrc
cd ../../../../

W OVER DIR station_plots/station4

bd sgf
TITLE "Degelen Source Spectra Station 4"
p2
sgftops *.sgf station_4.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps station_plots
*************************************************************************************
*******************************************************************************
SC mkdir station_plots/station5


SETBB dis1 372
SETBB dis2 0
SETBB dis3 418
SETBB dis4 440
SETBB dis5 337
SETBB dis6 393
SETBB dis7 334
SETBB dis8 372

cd 05-06-87/%ppath%
r z%dis1%_filtered.phsrc
cd ../../../../
cd 07-17-87/%ppath%
r more z%dis2%_filtered.phsrc
cd ../../../../
cd 10-04-89/%ppath%
r more z%dis3%_filtered.phsrc
cd ../../../../
cd 10-16-87/%ppath%
r more z%dis4%_filtered.phsrc
cd ../../../../
cd 10-18-88/%ppath%
r more z%dis5%_filtered.phsrc
cd ../../../../
cd 11-23-88/%ppath%
r more z%dis6%_filtered.phsrc
cd ../../../../
cd 12-15-71/%ppath%
r more z%dis7%_filtered.phsrc
cd ../../../../
cd 12-20-87/%ppath%
r more z%dis8%_filtered.phsrc
cd ../../../../

W OVER DIR station_plots/station5

bd sgf
TITLE "Degelen Source Spectra Station 5"
p2
sgftops *.sgf station_5.ps 2 s
0
0
0
1
SC rm *.sgf
SC mv *.ps station_plots
*************************************************************************************

q
mjk0
