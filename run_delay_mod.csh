#! /bin/tcsh -f
cd  ..
/usr/bin/python damage_time_delay.py <<mjk0
25
9
25
50
100
150
200
250
300
400
600

mjk0

cp *.txt  ../../proc_data/balapan_Mrg/mod/mm_w_delay
cp *.txt ../../proc_data/balapan_Mrg/mod/step_w_delay
rm *.txt
cd mod_depth

cp  step_dmg/* ../../../proc_data/balapan_Mrg/mod/step_no_delay
cp  step_expl/* ../../../proc_data/balapan_Mrg/mod/step_no_delay

cp  step_dmg/* ../../../proc_data/balapan_Mrg/mod/step_w_delay
cp  step_expl/* ../../../proc_data/balapan_Mrg/mod/step_w_delay

cp  mm_dmg/* ../../../proc_data/balapan_Mrg/mod/mm_no_delay
cp  mm_expl/* ../../../proc_data/balapan_Mrg/mod/mm_no_delay

cp  mm_dmg/* ../../../proc_data/balapan_Mrg/mod/mm_w_delay
cp  mm_expl/* ../../../proc_data/balapan_Mrg/mod/mm_w_delay