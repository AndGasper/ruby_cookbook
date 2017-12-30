# Problem: The letter (or words) of your string are in the wrong order.
# Solution: To create a new string that contains a reversed version of your original string, use the reverse method. To reverse a string in place, use the reverse! method:

some_string = ".sdrawkcab si gnirts sihT"
"some_string: #{some_string}\n some_string.reverse: #{some_string.reverse}"

some_string_2 = "order. wrong  the in are words These" 
# white space character 
some_string_2.split(/(\s+)/).reverse!.join('') # "These words are in the wrong order."
some_string_2.split(/\b/).reverse!.join('')  # "These words are in the wrong. order"


# Discussion:
# String#split method takes a regex to use as a separator 
# if match -> stop scanning, add to list, then resume scanning 
# List data type?
