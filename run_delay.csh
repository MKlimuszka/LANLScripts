#! /bin/tcsh -f
/usr/bin/python damage_time_delay.py <<mjk0
25
6
25
50
100
200
400
800

mjk0

cp *.txt  ../../proc_data/balapan_Mrg/mm_w_delay
cp *.txt ../../proc_data/balapan_Mrg/step_w_delay
rm *.txt


cp  step_dmg/* ../../proc_data/balapan_Mrg/step_no_delay
cp  step_expl/* ../../proc_data/balapan_Mrg/step_no_delay

cp  step_dmg/* ../../proc_data/balapan_Mrg/step_w_delay
cp  step_expl/* ../../proc_data/balapan_Mrg/step_w_delay

cp  mm_dmg/* ../../proc_data/balapan_Mrg/mm_no_delay
cp  mm_expl/* ../../proc_data/balapan_Mrg/mm_no_delay

cp  mm_dmg/* ../../proc_data/balapan_Mrg/mm_w_delay
cp  mm_expl/* ../../proc_data/balapan_Mrg/mm_w_delay
