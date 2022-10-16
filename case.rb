country = 'japan'

# if文を使う場合
if country == 'japan'
  puts 'こんにちわ'
elsif country == 'us'
  puts 'hello'
else
  puts '???'
end

# case文を使う場合
case country
when 'japan'
  puts 'こんにちわ'
when 'us'
  puts 'hello'
else
  puts '???'
end

# when節に複数の値を指定する
country = 'アメリカ'
case country
when 'japan', '日本'
  puts 'こんにちわ'
when 'us','アメリカ'
  puts 'hello'
else
  puts '???'
end