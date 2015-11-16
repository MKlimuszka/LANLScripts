#This program takes sac alphanumeric files ,with a specific size and delta spacing, and outputs an xy file for every frequency. 
#it looks for files in folders labeled station# and alphanumeric files within. 
#It places the output in a dir called frequency_files, which must be supplied by the user

delta = 0.02170139
frequencies = []

#gives alist of all frequencies
for j in range(260):
	frequencies.append(j*delta)
#populates dictionary
masterd = {}
for j in frequencies:
	masterd[j] = []
###################################################################################################
###Define functions
############################################
def addtodict(flnm,dis): #opens a file and adds the appropriate data to the dictionary
	global masterd
	f = open(flnm,'r')
	g = open(flnm,'r')
	filelist = f.readlines()[30:]
	lineone = g.readlines()[0]
	delt = float(lineone[5:15])
	global distance
		
	list = []
	###Puts all yalues in a single list from the input file
	for j in range(len(filelist)):
		list.append(filelist[j][6:16])
		list.append(filelist[j][20:30])
		list.append(filelist[j][36:45])
		list.append(filelist[j][51:60])
		list.append(filelist[j][66:75])
	for j in range(len(list)):
		try:
			masterd[j*delt].append([dis,(float(list[j]) / (float(delt) * float(j))), float(list[j])])
		except ValueError:	
			None
		except ZeroDivisionError:
			None		
	
#######################################################################################################


#for k in [ ('station1',13.7),('station2',17.0), ('station3',21.9), ('station4',29.5), ('station5',37.8),('station6',49.2),('station7',58.6),('station8',70.2),('station9',82.0)]:
for k in [ ('station1',13.66),('station2',17.01), ('station3',21.89), ('station4',29.43), ('station5',38.09)]:


	#trys to add data from all explosion files to the dictionary. If the file is not there, it just ignores it
	for i in [ '07-17-87-alpha.ph', '11-23-88-alpha.ph', '10-18-88-alpha.ph', '10-04-89-alpha.ph', '05-06-87-alpha.ph', '12-20-87-alpha.ph', '10-16-87-alpha.ph', '12-15-71-alpha.ph']:
		try:
			addtodict(k[0] + '/' + i,k[1])
		except IOError:
			None
	



#### Now I have a dictionary with frequency keys and distance,time pairs as values.

#gives alist of all frequencies to output (not all frequencies will have data from all stations)
freqout = []
delta =  0.02170139
begin = int( 0.3 / delta )
end = int(2.2 / delta)
for j in range(begin,end):
	freqout.append(j*delta)

for j in freqout:
	printfile = open("frequency_files/" + str(round(j,4))+ '.txt', 'w')
	printfile.write("Frequency = " + str(j) + "\n")
	printfile.write("Distance (km)".ljust(20) + "Time(s)".ljust(20) + "Cycles".ljust(20) +"\n")
	freqtemp = masterd[j]
	if len(freqtemp) > 0:
		for i in range(len(freqtemp)):
			printfile.write(str(freqtemp[i][0]).ljust(20) + str(round(freqtemp[i][1],4)).ljust(20) + str(round(freqtemp[i][2],4)).ljust(20) +"\n")












