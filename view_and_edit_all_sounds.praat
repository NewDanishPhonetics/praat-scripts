# This script creates a textgrid for each sound in the Objects list, opens them in the editor and closes them again.

# Select all of the objects in the list
select all

# Get the count of sound objects
numSelected = numberOfSelected ("Sound")

# Do something for each sound
for i to numSelected

	select all
    name$=selected$("Sound", i)
    	
	#Create TextGrid
	select Sound 'name$'
	To TextGrid: "tier1 tier2", "tier2"

	#Select Sound and TextGrid
	select Sound 'name$'
    plus TextGrid 'name$'
	View & Edit
	editor TextGrid 'name$'

	#Do something in the editor here

	#Clean up
	Close
	endeditor

endfor

