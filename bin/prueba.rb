require "ull-etsii-alu4116-lambdaregexp"

include Ull::Etsii::Alu4116::Lambdaregexp

puts " "
puts "EJEMPLOS"

c = char('c') #c
puts "c = char('c') ---> c['c'] = #{c['c']}"
puts "c = char('c') ---> c['d'] = #{c['d']}"

d = star(char('c')) #c*
puts "d = star(char('c')) ---> d['cccef'] = #{d['cccef']}"

x = star(alt(char('c'), char('e'))) #(c|e)*
puts "x = star(alt(char('c'), char('e'))) = (c|e)* ---> x['cccef'] = #{x['cccef']}"


puts " "

