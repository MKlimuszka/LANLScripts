#! /bin/tcsh -f
../../../scripts/Nmts/nmts <<mjk0
ebinout
../../NMTS_out/prinout_step_dmg
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_025.s
sour
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_050.s
sour
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_100.s
sour
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_200.s
sour
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_400.s
sour
z
1 0
1 1
0 11
n
10 0
2
mt
0 0 0 0 0 1e22
step
0 0
rdp
vel
2
../../../data/balapan_seismograms/step_dmg/dmg-step_800.s
end
mjk0
