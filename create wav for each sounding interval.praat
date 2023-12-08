# This script traverses a textgrid and creates a sound file 
# for each interval labelled 'sounding'
# Guide:
# Create a textgrid with either (voice activity) or (silences)
# Select first interval > run script
#
# https://github.com/NewDanishPhonetics/praat-scripts

count = 0
repeat
	name$ = Get label of interval

	if name$ = "sounding"
		count = count + 1
		count$ = "'count'"
		filename$ = count$ + ".wav"
		Write selected sound to WAV file... 'filename$'
	endif

	Select next interval
	time = Get start of selection

until 'time' = 0
