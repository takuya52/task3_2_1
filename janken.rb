puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  def janken
    @janken_result = ""
    my_hand = gets.to_i
    pc_hand = rand(0..2)

    jankens = ["グー", "チョキ","パー","戦わない"]

    puts "ホイ"
    puts "あなたの手:#{jankens[my_hand]}\n相手の手:#{jankens[pc_hand]}"
    puts "---------------"
    
    win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
    lose = (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1)
    draw = (my_hand == 0 && pc_hand == 0) || (my_hand == 1 && pc_hand == 1) || (my_hand == 2 && pc_hand == 2)
    finish = my_hand == 3
    
    if win
      @janken_result = "win"
      acchimuite_hoi()
      
    elsif lose
      @janken_result = "lose"
      acchimuite_hoi()
      
    elsif draw
      puts "あいこで"
      puts "---------------"
      janken()
      
    elsif finish
      puts "ゲームを終了します"
      puts "---------------"
      exit
    end
  end

  def acchimuite_hoi
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    my_face = gets.to_i
    pc_face = rand(4)
    
    directions = ["上", "下","左","右"]
    
    puts "ホイ！"
    puts "あなた:#{directions[my_face]}\n相手:#{directions[pc_face]}"
    puts "---------------"
    
    if @janken_result == "win" && my_face == pc_face
      puts "あなたの勝ち"
      puts "---------------"
      exit
    
    elsif @janken_result == "lose" && my_face == pc_face
      puts "あなたの負け"
      puts "---------------"
      exit
      
    else 
      puts "もう一度、じゃんけん..."
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
      puts janken()
    
    end
    
  end

janken()


