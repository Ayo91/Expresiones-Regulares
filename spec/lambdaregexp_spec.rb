require "ull-etsii-alu4116-lambdaregexp"

describe Ull::Etsii::Alu4116::Lambdaregexp do
  before :all do
		@prueba = Ull::Etsii::Alu4116::Lambdaregexp.char("hola")
  end

#-------------------------------------------------------------------------------   
  it "Creacion y reconocimiento de una expresión regular a partir de un string" do
      @prueba["hola"].should == ""
  end	

#-------------------------------------------------------------------------------   
  it "Creación y reconocimiento de expresiones del tipo *:0 o mas repeticiones de una cadena" do
		@star = Ull::Etsii::Alu4116::Lambdaregexp.star(@prueba)
		@star["holahola"].should == ""
  end	

#-------------------------------------------------------------------------------   
  it "Creación y reconocimiento de expresiones del tipo concatenación de dos cadenas" do
		@seq = Ull::Etsii::Alu4116::Lambdaregexp.seq(@prueba,@prueba)
		@seq["holahola"].should == ""
  end	

#-------------------------------------------------------------------------------   
  it "Creación y reconocimiento de expresiones del tipo +:1 o mas repeticiones de una cadena" do
		@plus = Ull::Etsii::Alu4116::Lambdaregexp.plus(@prueba)
		@plus["hola"].should == ""
		@plus[""].should == false
  end	

#-------------------------------------------------------------------------------   
  it "Creación y reconocimiento de la cadena vacia" do
		@epsilon = Ull::Etsii::Alu4116::Lambdaregexp.epsilon
		@epsilon["hola"].should == "hola"
		@epsilon[""].should == ""
  end	

#-------------------------------------------------------------------------------   
  it "Creación y reconocimiento de expresiones del tipo |" do
		@prueba2 = Ull::Etsii::Alu4116::Lambdaregexp.char("Adios")
		@alt = Ull::Etsii::Alu4116::Lambdaregexp.alt(@prueba, @prueba2)
		@alt["hola"].should == ""
		@alt["Adios"].should == ""
		@alt[""].should == false
  end	


end
