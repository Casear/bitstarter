fs = require 'fs'
prime = []
count = 100
num = 2
while prime.length isnt count
	mid = Math.sqrt num 
	div = 0
	for x in prime when x <= mid and x >1
		if num%x is 0
			div = x
			break
	if div is 0
		prime.push num
	num++
outfile = 'part-02-content.txt'
out = prime.join()
console.log out
fs.writeFile outfile,out,(err)->
	if err
		console.log 'write file error :'+err
	else
		console.log 'execute successfully'
