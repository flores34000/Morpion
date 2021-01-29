
require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
require_relative 'game'

class Application

 
  def start_game
    system('clear') # vide le terminal si on rejoue
    puts "            MORPION GAME"
    puts ""
    puts ""
  end

  # demande nom du joueur et lui attribut son symbol
  def ask_player1
    puts "        Entré votre nom "
    print "        JOUEUR 1 : "
    player1 = gets.chomp
    puts " "
    puts "     #{player1} Tu joueras avec X"
    puts " "
    return player1
  end


  def ask_player2
    puts "       Entré votre nom "
    print "       JOUEUR 2 : "
    player2 = gets.chomp
    puts " "
    puts "      #{player2} Tu joueras avec O"
    puts " "
    puts " "
    puts "      Appuie sur entrée si tu veux commencer"
    gets.chomp
    return player2
  end
# le joueur 2 lance la partie
 

  
  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2

    game = Game.new(player1, player2) 
    game.turn

  end
  
end