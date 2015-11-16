#! /bin/tcsh -f
set b = 11
set e = 40
set del = 1



mkdir all_plots


//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0


TRANSCRIPT CREATE FILE fit_parameters CON o
TRANSCRIPT WRITE MESSAGE "K	Slope	Slope SD	Y Intercept	Y Intercept SD	CC"
TRANSCRIPT CLOSE FILE fit_parameters 
q
mjk0



while ($b <= $e)

//wave2/user_dirs/ger/IRIS_SAC/sac/bin/sac <<mjk0

echo w 
macro ../../../scripts/my_scripts/Mrg_v_LOGW/SUM_mrg_k
$b
0
0
0
1
q
mjk0

@ b = $b + $del

end

cp mrg_output*/*.ps all_plots
