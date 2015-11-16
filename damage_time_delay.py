#!/usr/bin/python

#####################################################################################
#Matthew Klimuszka 06/2013
#Python 2.1.1
#####################################################################################



print "This program calculates the time delay between a seismic event and the \n associated damage event for specified depths using a Balapan SW earth model.\n" 


f = open('../earth_models/balapan_SW','r')
filelist = f.readlines()[2:]
list = []
timeout = []

##########################################
# loop through lines, storing depth and speed for each line as a list of tuples
##########################################

for j in range(len(filelist)):
	
	#############################################################
	#find first two values on line
	#############################################################
	beginfirst = 0
	endfirst = 0
	beginsecond = 0
	endsecond = 0
	i=0

###
#find first value
###
	while beginfirst == 0:
		if filelist[j][i] == ' ':
			i = i + 1
		else:
			beginfirst = i
	while endfirst == 0:
		if filelist[j][i] != " ":
			i = i +1
		else:
			endfirst = i		
###	
#find second value
###

	while beginsecond == 0:
		if filelist[j][i] == ' ':
			i = i + 1
		else:
			beginsecond = i
	while endsecond == 0:
		if filelist[j][i] != " ":
			i = i +1
		else:
			endsecond = i		
	
###
#add values to list
###
	list = list + [[float(filelist[j][beginfirst:endfirst]), float(filelist[j][beginsecond:endsecond])]]
i = 0
#####################################################################
#list now contains depth and speed as a list of lists
#####################################################################


#############################
#calculate time from downward wave
#############################

dmg_depth = float(raw_input('Enter damage depth in m. '))

stop = 0
time = 0
remaining_depth = dmg_depth / 1000
while stop == 0:
	if remaining_depth > list[i][0]:
		time = time + (list[i][0] / list[i][1])
		i = i + 1
	else:
		time = time + (remaining_depth / list[i][1])
		stop = 1
		i = 0


dmg_time = time

############################
#Calculate time from upward wave
############################

nofe = int(raw_input('Enter number of events. '))

for j in range(nofe):
	
	event_depth = float(raw_input('Enter event depth in m. '))
	
	stop = 0
	time = 0
	remaining_depth = event_depth / 1000
	while stop == 0:
		if remaining_depth > list[i][0]:
			time = time + (list[i][0] / list[i][1])
			remaining_depth = remaining_depth - list[i][0]
			i = i + 1
		else:
			time = time + (remaining_depth / list[i][1])
			stop = 1
			i = 0
	
	total_time = dmg_time + time
	timeout = timeout + [[dmg_depth, event_depth, total_time]]

################################################
#Print to file
#prints one descriptive file in columns, and one file with only rounded time values to be easily read into SAC
################################################

printname = "balapan-delay"

printfile = open(printname + ".txt", 'w')


printfile.write ("Damage Depth (m)".ljust(20) + "Event Depth (m)".ljust(20) + "Total Time (s)".ljust(0) + "\n")

for j in range(len(timeout)):
	printfile.write( str(timeout[j][0]).ljust(20) + str(timeout[j][1]).ljust(20) + str(timeout[j][2])[0:9].ljust(0)+ "\n")

timefile = open (printname + "_t_only.txt",'w')

for j in range(len(timeout)):
	timefile.write(str(timeout[j][1])[0:9].ljust(15))

timefile.write('\n')

for j in range(len(timeout)):
	timefile.write(str(round(timeout[j][2], 6))[0:9].ljust(15))
####
##Finished
####

print "done"

