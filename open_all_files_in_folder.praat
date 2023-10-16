#Open all files in folder - Files must be Praat Readable

#Ask for directory
form Open all files in directory
	sentence Directory mydir/
endform

#Read files
Create Strings as file list... list 'directory$'*
numberOfFiles = Get number of strings

for i to numberOfFiles
	filename$ = Get string... i
	Read from file... 'directory$''filename$'
	select Strings list
endfor

#Clean up
select Strings list
Remove
