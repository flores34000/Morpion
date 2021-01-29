require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'

class Game < Board
  attr_accessor :players, :board, :current_player
   
  def initialize(player1, player2)
    @board = Board.new

    @players = []

    #met les 2 joueurs dans un array pour acceder aux valeurs
    @current_player = Player.new(player1, "O")
    @players << @current_player
    @current_player = Player.new(player2, "X")
    @players << @current_player

  end

 

  #fais jouer une partie avec les methodes de board.rb)
  def turn

    loop do

    system('clear') #nettoyer l'affichage a chaque tour

      board.board_display  #affiche le plateau

      #tour du joueur 1
      puts "      A toi de jouer  #{players[0].name}"
      board.play_turn("01") # qui correspond à X
      board.board_display

      
      if board.victory == "X"
        puts "      Bravo #{players[0].name} ! "
        puts "      Tu es trop fort 💪"
        puts "      Relance app.rb si tu veux rejouer"
        
        break
      end

      
      if board.victory == "égalité"
        puts "      Egalité !"
        puts "      Relance app.rb si tu veux rejouer"
        break
      end

      #tour joueur 2
      puts "      A toi de jouer #{players[1].name}"
      board.play_turn("02") #qui correspond à O
      board.board_display

      
      if board.victory == "O"
        puts "      Bravo #{players[1].name} ! "
        puts "      Tu es trop fort 💪"
        puts "      Relance app.rb si tu veux rejouer"
       
        break
      end

    end

    

  end
  
end
  