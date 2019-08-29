class Player
 def hand
   # Process of the following method is created in this.
   # Puts the console into an input wait state, and outputs the value the player types from the console
  puts "please select one among these following:"
	puts "0: Goo"
	puts "1: Choki"
	puts "2: Par"
    player_hand = gets.chomp
    if player_hand == "0" || player_hand == "1" || player_hand == "2"
      player_hands = player_hand.to_i
    else
      puts  " Enter a number from 0 to 2 "
      Player.new.hand
    end
 end
end

class Enemy
 def hand
   # Create processing of the method that outputs the value of rock, paper, scissors at random in this
   return rand(3).to_i
 end
end

class Game
 def pon(player_hand, enemy_hand)
   # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
   # At that time, when you enter values other than draw or rock, scissors, paper, do another game.
   # Show what the other party gave out of rock, scissors, paper
   if enemy_hand == 0
	  enemy = "gao"
	elsif enemy_hand == 1
	  enemy =  " Chocki "
	elsif enemy_hand == 2
	  enemy = "par"
	end
	number = (player_hand - enemy_hand + 3) % 3
	if number == 1
	  puts  "The opponent's hand is #{ enemy } . You loose. "
	elsif number == 2
	  puts  "The opponent's hand is #{ enemy } . You are winner. "
	else
	  puts  "The opponent's hand is #{ enemy } . It is draw. "
	  return "again"
	end
 end
end

player = Player.new
enemy = Enemy.new
game = Game.new

# The Game method is invoked by the following description

while game.pon(player.hand, enemy.hand) do
  again = janken
end

# The Ruby description written here is a template prepared as a hint.

# If you want to implement without following the written description, you can implement it as you like.

# Any implementation will pass if it meets the requirements and the code quality is determined to be at a certain level.
