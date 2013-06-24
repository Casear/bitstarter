fs = require 'fs'

outfile = 'part-01-content.txt'
out = 'A startup is a business built to grow rapidly.\n'
fs.writeFile outfile, out,(err)->
	if err
		console.log 'file write err : '+err
	else
		console.log "Script: " + __filename + "\nWrote: " + out + "To: " + outfile
	
