# Problem: You want to create a string that contains Ruby expressions or variable substitutions without actually performing the substitutions. You plan to substitute values into the string later, possibly *multiple* times with different values each time.

# Solution: Two good solutons
# 1. `printf`-style strings 
# 2. Embedded Ruby (ERB) Templates  

template = 'Oceania has always been at war with %s.'
template % 'Eurasia'
template % 'Eastasia' 

template2 = 'All the science, I don\'t understand %s'
template2 % 'it\'s just my job, 5 days a week.'

require 'erb'
erb_template = ERB.new %q{Chunky <%= food %>!} 
food = 'bacon' 
erb_template.result(binding) # uwotm8?
# > You can omit the call to Kernel#binding if you're not in an irb session
# Seems like useful information if you're having to add stuff together. 

# reassignment? Intriguing. 
food = 'not bacon'
erb_template.result(binding)