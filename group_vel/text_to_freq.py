frequencies = []
delta = 0.02
#gives alist of all frequencies
for j in range(25,101):
	frequencies.append(j*delta)
print frequencies
#populates dictionary
masterd = {}
for j in frequencies:
	masterd[int(round(j*100))] = []
print masterd


f = open("group_velocity.txt",'r')
g = open("group_velocity.txt",'r')
filelist = f.readlines()[1:]
lineone = g.readlines()[0]
global distance
	
list = []
###Puts all yalues in a single list from the input file
for j in range(len(filelist)):
	list.append([filelist[j][1:5],filelist[j][11:28],filelist[j][36:46]])
	
	
for j in range(len(list)):
	print list[j]
	masterd[int(round(100*float(list[j][0])))].append([float(list[j][1]),float(list[j][2])])
	




#### Now I have a dictionary with frequency keys and distance,time pairs as values.



for j in frequencies:
	printfile = open("frequency_files/" + str(round(j,4))+ '.txt', 'w')
	printfile.write("Frequency = " + str(j) + "\n")
	printfile.write("Distance (km)".ljust(20) + "Time(s)".ljust(20)+ "\n")
	freqtemp = masterd[int(round(j*100))]
	if len(freqtemp) > 0:
		for i in range(len(freqtemp)):
			printfile.write(str(freqtemp[i][0]).ljust(20) + str(round(freqtemp[i][1],4)).ljust(20)  +"\n")












