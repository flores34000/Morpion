
class BoardCase
  attr_accessor :value, :id
    
  def initialize(id)
    @id = id  # pour identifier la case
    @value = " "  # valeur de la case vide au debut puis X ou O
  end
    
end
  