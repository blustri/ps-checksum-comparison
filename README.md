# simple ps script for checksums comparison
for when youre lazy to open up powershell (for some reason)
basically just a ps script u can use to compare two SHA256 checksums                                   
you could also use this for MD5 checksums, but you have to edit the script and add { -Algorithm MD5 } to the end of Get-FileHash line
