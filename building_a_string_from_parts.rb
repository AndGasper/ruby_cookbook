hash = {
    key1: "value 1",
    key2: "value 2"
}
string = "";
string2 = ""; # Trying the 'more efficient' version
# Must be outputting to the string with << ?
# #{variable} hmm...
hash.each { |k,v| string << "#{k} is #{v}\n" }
puts string

hash.each { |k,v| string2 << k.to_s << " is " << v << "\n" }
puts string2