def greet(country)
  # こんにちわ、またはhellowが戻り値になる
  if country == 'japan'
    'こんにちわ'
  else
    'hello'
  end
end
puts greet('japan')


# 引数なしの場合はcountryに'japan'を設定する(デフォルト値)
def greet(country = 'japan')
  if country == 'japan'
    'おはよう'
  else
    'hello'
  end
end

puts greet 
puts greet('us')