def greet(country)
  # こんにちわ、またはhellowが戻り値になる
  if country == 'japan'
    'こんにちわ'
  else
    'hellow'
  end
end
puts greet('japan')
