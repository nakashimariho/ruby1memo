require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.chomp

if memo_type == "1"
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    
    CSV.open("#{file_name}.csv",'w'){|memo|
        memo_type = memo.readlines
    }
    memo << ["#{memo_type}"]
    
elsif memo_type == "2"
    puts "編集したいファイル名を入力してください"
    file_name = gets.to_s
    
    puts "編集内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    
    CSV.open("#{file_name}.csv",'a'){|memo|
         memo_type = memo.readlines
    }
    memo << ["#{memo_type}"]
end

