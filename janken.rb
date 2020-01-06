class Game
  puts 'じゃんけんをはじめます'
  def janken
    puts 'グーなら0、チョキなら１、パーなら２を入力してください'
    player_hand = gets.to_i
    enemy_hand = rand(3)

    puts 'じゃ～ん，けーん、ぽん'
    janken_select = ['グー','チョキ','パー']

    puts "あなたの手 => #{janken_select[player_hand]}、\nコンピューターの手 => #{janken_select[enemy_hand]}"

    if player_hand == enemy_hand
      puts 'あいこです'
      janken
    elsif  (player_hand -- enemy_hand == -1) || (player_hand -- enemy_hand == 2)
      puts 'あなたの勝ちです'
    else
      puts 'あなたの負けです'
    end
  end
end

# puts 'じゃんけんをはじめます'
Game.new.janken
