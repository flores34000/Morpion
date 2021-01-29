
class Board
  attr_accessor :array_case
  
  def initialize
    @array_case = []

    #rajoute les nouvelles cases crées dans le tableau 
    @array_case << BoardCase.new("A1")
    @array_case << BoardCase.new("A2")
    @array_case << BoardCase.new("A3")
    @array_case << BoardCase.new("B1")
    @array_case << BoardCase.new("B2")
    @array_case << BoardCase.new("B3")
    @array_case << BoardCase.new("C1")
    @array_case << BoardCase.new("C2")
    @array_case << BoardCase.new("C3")

  end

  #l'affichage du tableau
  def board_display
    puts " "
    puts "              1   2   3 "
    print "         "
    puts "   ------------" 
    puts "          A | #{array_case[0].value} | #{array_case[1].value} | #{array_case[2].value} "
    print "         "
    puts "   ------------" 
    puts "          B | #{array_case[3].value} | #{array_case[4].value} | #{array_case[5].value} "
    print "         "
    puts "   ------------" 
    puts "          C | #{array_case[6].value} | #{array_case[7].value} | #{array_case[8].value} "
    puts " "
  end


 

  #méthode pour un tour de joueur
  def play_turn(player)

    #changer la valeur de la case en X ou O en fonction du joueur (definie dans game.turn)
    player == "01" ? a = "X" : a = "O"
     

    #demande le choix du joueur
    puts "      Choisi ta case"
    print "      > "
    input = gets.chomp

    loop do
      case input

     

      when "A1"
        # si la case n'est pas vide choisi une autre case
        if array_case[0].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[0].value = a
          break
        end

      when "A2"
        if array_case[1].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[1].value = a
          break
        end

      when "A3"
        if array_case[2].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[2].value = a
          break
        end

      when "B1"
        if array_case[3].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[3].value = a
          break
        end

      when "B2"
        if array_case[4].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[4].value = a
          break
        end

      when "B3"
        if array_case[5].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[5].value = a
          break
        end

      when "C1"
        if array_case[6].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[6].value = a
          break
        end

      when "C2"
        if array_case[7].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[7].value = a
          break
        end

      when "C3"
        if array_case[8].value != " "
          puts "        Choisie une autre case"
          print "      > "
          input = gets.chomp
        else
          array_case[8].value = a
          break
        end

      else
        # si c'est un input qui ne correspont pas
        puts "        Cette case n'existe pas 🙄! Tu dois taper en majuscule concentre toi et recommence."
          print "      > "
        input = gets.chomp
      end
    end
  end

  def victory

    # si le joueur avec X
    if array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "X"
      return "X"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "X"
      return "X"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "X"
      return "X"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "X"
      return "X"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "X"
      return "X"
# si joueur avec "O"
   
    elsif array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "O"
      return "O"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "O"
      return "O"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "O"
      return "O"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "O"
      return "O"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "O"
      return "O"

    #si toutes les cases du jeu sont pleines
    elsif array_case[0].value != " " && array_case[1].value != " " && array_case[2].value != " " && array_case[3].value != " " && array_case[4].value != " " && array_case[5].value != " " && array_case[6].value != " " &&array_case[7].value != " " && array_case[8].value != " "
      return "égalité"

   
    end
    
  end

end