# r* --> expresion regular que se transforma en una lambda. Para cada expresion regular definimos unos metodos
# rs --> seq(r,s) (concatenación)  --> concatenar tres: seq(seq(r,s),t)
# hola --> char(metodo que representa esa expresion regular)
# Los metodos reciben una lambda y devbuelven otra lamba
# Ejemplo:  c(a|d)+r --> definicion en ejemplo de clase


require "ull-etsii-alu4116-lambdaregexp/version"

module Ull
  module Etsii
    module Alu4116
      module Lambdaregexp

			module_function #para que sea incluible el espacio de nombres

			#r | s --> alt(r,s)
			def alt(left, right)
			  lambda { |x|  left[x] or right[x] }
			end
		 	alias :| :alt


			def char(c)
			  lambda { |x| x[0,c.length] == c and x[c.length..-1] }
			end


			#epsilon --> empty
			def epsilon
			  lambda {|x| x }
			end

			#r+ --> plus(r)
			def plus(r)
			  lambda { |x| seq(r, star(r))[x] }
			end
		 	alias :+ :alt


			def seq(left, right)
			  lambda { |x| w = left[x] and right[w] }
			end
		 	alias :- :seq


			#r* --> star(r)
			def star(r)
			  lambda { |x| plus(r)[x] or epsilon[x] }
			end
		 	alias :~ :star

      end
    end
  end
end
