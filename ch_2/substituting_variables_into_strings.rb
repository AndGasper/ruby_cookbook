# Problem: You want to create a string that contains a representation of a Ruby variable or expression

# Solution: Within the string, enclose the variable or expression in curly brackets and prefix it with a hash (octothrope, sp?) character:

number = 5
"The number is #{number}."
"The number after #{number} is #{number.next} (number.next)."
# "The number after #{number} is #{number++}. (number++)"
# number++ doesn't work
"The number after #{number} is #{number+1} (number+1)"
if (number === 5) 
    "Pow, pow!"
else 
    "Bam bam! Not 5"
end
