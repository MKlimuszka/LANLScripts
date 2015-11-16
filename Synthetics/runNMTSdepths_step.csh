#! /bin/tcsh -f
echo
../../../scripts/Nmts/nmts <<mjk0
ebinout
../../NMTS_out/prinout_step
z
1 0
1 1
0 11
n
10 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_025.s
sour
z
2 0
1 1
0 11
n
10 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_050.s
sour
z
3 0
1 1
0 11
n
10 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_100.s
sour
z
4 0
1 1
0 11
n
10 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_200.s
sour
z
5 0
1 1
0 11
n
500 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_400.s
sour
z
6 0
1 1
0 11
n
10 0
2
mt
1e22 0 1e22 0 0 1e22
step
0 0 
rdp
vel
2
../../../data/balapan_seismograms/step_expl/mono_800.s
end
mjk0
