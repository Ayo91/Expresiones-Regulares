require "ull-etsii-alu4116-lambdaregexp"
require "test/unit"


#Test que comprueba si se calcula el radio de una circunferencia correctamente.
class Lambdaregexp < Test::Unit::TestCase

	#ejecutar antes de cada test
	def setup
		@prueba = Ull::Etsii::Alu4116::Lambdaregexp.char("hola")
	end

#-------------------------------------------------------------------------------   
	def test_ExpresionString
		assert_equal(@prueba["hola"], "")
	end

#-------------------------------------------------------------------------------   
	def test_ExpresionStar
		@star = Ull::Etsii::Alu4116::Lambdaregexp.star(@prueba)
		assert_equal(@star["holahola"],"")		
	end

#-------------------------------------------------------------------------------   
	def test_Concatenacion
		@seq = Ull::Etsii::Alu4116::Lambdaregexp.seq(@prueba,@prueba)
		assert_equal(@seq["holahola"],"")
	end

#-------------------------------------------------------------------------------   
	def test_Plus
		@plus = Ull::Etsii::Alu4116::Lambdaregexp.plus(@prueba)
		assert_equal(@plus["hola"],"")
		assert_equal(@plus[""],false)
	end


#-------------------------------------------------------------------------------   
	def test_epsilon
		@epsilon = Ull::Etsii::Alu4116::Lambdaregexp.epsilon
		assert_equal(@epsilon["hola"],"hola")
		assert_equal(@epsilon[""], "")
	end


#-------------------------------------------------------------------------------   
	def test_alt
		@prueba2 = Ull::Etsii::Alu4116::Lambdaregexp.char("Adios")
		@alt = Ull::Etsii::Alu4116::Lambdaregexp.alt(@prueba, @prueba2)
		assert_equal(@alt["hola"],"")
		assert_equal(@alt["Adios"], "")
		assert(!@alt[""])
	end




end
