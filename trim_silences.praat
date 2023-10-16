# Praat has a command to remove silence from a sound file. This is just at demonstration of the code.
# Select a sound in the objects list and run this command in a Praat script:

do ("Trim silences...", 0.05, 1, 100, 0, -25, 0.05, 0.05, 0, "silence")

#The parameters refer to the following:
#trimDuration = 0.05
#onlyAtStartAndEnd = 1 (0 = no, 1 = yes)
#minPitch = 100
#timeStep = 0
#silenceThreshold = -25
#minSilenceDuration = 0.05
#minSoundingDuration = 0.05
#tg(?) = 0
#trimLabel = "silence"

# See also: https://www.fon.hum.uva.nl/praat/manual/Sound__Trim_silences___.html
