puts "最初はグー、じゃんけん..."

def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  jankens = ["グー", "チョキ", "パー"]
  player_hand = gets.to_i
  program_hand = rand(3)

  puts "あなたの手:#{jankens[player_hand]}"
  puts "相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで..."
    return true

  elsif  (player_hand == 0 && program_hand == 1) ||
         (player_hand == 1 && program_hand == 2) ||
         (player_hand == 2 && program_hand == 0)

         puts "あなた:あっち向いて..."
         puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"

         lookThisWay = ["上", "右", "下","左"]
         player_finger = gets.to_i
         program_face = rand(4)

         puts "ホイ！"
         puts "あなた:#{lookThisWay[player_finger]}"
         puts "相手:#{lookThisWay[program_face]}"

          if player_finger != program_face
            puts "最初はグー、じゃんけん..."
            return true

          else player_finger == program_face
            puts "相手の負けです"
            return false

          end

  else   (player_hand == 1 && program_hand == 0) ||
         (player_hand == 2 && program_hand == 1) ||
         (player_hand == 0 && program_hand == 2)

         puts "相手:あっち向いて..."
         puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"

         lookThisWay = ["上", "右", "下","左"]
         player_face = gets.to_i
         program_finger = rand(4)

         puts "ホイ"
         puts "あなた:#{lookThisWay[player_face]}"
         puts "相手:#{lookThisWay[program_finger]}"

         if player_face != program_finger
           puts "最初はグー、じゃんけん..."
           return true

         else player_face == program_finger
           puts "あなたの負けです"
           return false

         end
  end
 end

 next_game = true

 while next_game do
   next_game = janken
 end
