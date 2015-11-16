#! /bin/tcsh -f
cd ..
/usr/bin/python ../damage_time_delay_deg.py <<mjk0
16
8
77
84
91
101
110
150
200
320

mjk0

mkdir ../../proc_data/degelen_Mrg16m
mkdir ../../proc_data/degelen_Mrg16m/mod
mkdir ../../proc_data/degelen_Mrg16m/mod/mm_w_delay
mkdir ../../proc_data/degelen_Mrg16m/mod/step_w_delay
mkdir ../../proc_data/degelen_Mrg16m/mod/step_no_delay
mkdir ../../proc_data/degelen_Mrg16m/mod/mm_no_delay

cp *.txt  ../../proc_data/degelen_Mrg16m/mod/mm_w_delay
cp *.txt ../../proc_data/degelen_Mrg16m/mod/step_w_delay
rm *.txt
cd mod_depth16m




rm ../../../proc_data/degelen_Mrg16m/mod/step_no_delay/*.s
rm ../../../proc_data/degelen_Mrg16m/mod/step_w_delay/*.s
rm ../../../proc_data/degelen_Mrg16m/mod/mm_no_delay/*.s
rm ../../../proc_data/degelen_Mrg16m/mod/mm_w_delay/*.s

rm ../../../proc_data/degelen_Mrg16m/mod/step_no_delay/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/step_w_delay/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/mm_no_delay/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/mm_w_delay/*/*

rm ../../../proc_data/degelen_Mrg16m/mod/step_no_delay/*/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/step_w_delay/*/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/mm_no_delay/*/*/*
rm ../../../proc_data/degelen_Mrg16m/mod/mm_w_delay/*/*/*

cp  step_dmg/* ../../../proc_data/degelen_Mrg16m/mod/step_no_delay
cp  step_expl/* ../../../proc_data/degelen_Mrg16m/mod/step_no_delay

cp  step_dmg/* ../../../proc_data/degelen_Mrg16m/mod/step_w_delay
cp  step_expl/* ../../../proc_data/degelen_Mrg16m/mod/step_w_delay

cp  mm_dmg/* ../../../proc_data/degelen_Mrg16m/mod/mm_no_delay
cp  mm_expl/* ../../../proc_data/degelen_Mrg16m/mod/mm_no_delay

cp  mm_dmg/* ../../../proc_data/degelen_Mrg16m/mod/mm_w_delay
cp  mm_expl/* ../../../proc_data/degelen_Mrg16m/mod/mm_w_delay
