require 'erb'

template = %q{
    <% if problems.empty? %>
        Looks like your code is clean!
    <% else %> 
        I found the following problems with your code:
        <% problems.each do |problem, line| %>
            * <%= problem %> on line <%= line %>
        <% end %>
    <% end %>}.gsub(/^\s+/, '')
template = ERB.new(template, nil, '<>') 

problems = [["Use of is_a? instead of duck typing", 23], ["eval() is usually dangerous", 44]]
template.run(binding)

problems = []
template.run(binding)


class String 
    def substitute(binding=TOPLEVEL_BINDING)
        eval(%{"#{self}"}, binding)
    end
end
template2 = %q{Chunky #{food}!} 
food = 'bacon'
template2.substitute(binding)
food = 'not bacon'
template2.substitute(binding)
template3 = %q{Here's why eval is dangerous: #{danger}} 
danger = "#{system("dir")}"
template3.substitute(binding)



# My spidey senses are tingling on this one 