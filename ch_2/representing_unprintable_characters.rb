# Problem: You need to make reference to a control character, a strange UTF-8 character, or some other character that's not on your keyboard.

# Solution: Escape the weirdness 

# You can reference any binary character by encoding its octal representation format "\000", or its hexadecimal representation into the format "\x00"

octal = "\000\001\010\020"
octal.each_byte { |x| puts x } 
# Output: 
# 0
# 1
# 8
# 16
# "\u0000\u0001\b\u0010"


hexadecimal  = "\x00\x01\x10\x20"
hexadecimal.each_byte { |x| puts x }
# Output: 
# 0
# 1
# 16
# 32
# "\u0000\u0001\u0010 "

open('smiley.html', 'wb') do |f| 
    f << '<meta http-equiv="Content-Type" contnet="text/html;charset=UTF-8">'
    f << "\xe2\x98\xBA"
end

# Ayy lmao: "\xe2\x98\xBA" is a smiley face


