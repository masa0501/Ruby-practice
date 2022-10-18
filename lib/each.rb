numbers = [1,2,3,4]
sum = 0

numbers.each do |n|
  sum += n
end
puts sum

a =[1,2,3,1,2,3]
#配列から値が奇数の要素を削除する
a.delete_if do |n|
  n.odd?
end
puts a

numbers = [1,2,3,4]
sum = 0

numbers.each do |n|
  #sum_valueはブロック内で初めて登場した変数なので、ブロック内のみ有効
  sum_value = n.even? ? n * 10 : n
  sum += sum_value #sumはブロック外で作成したのでブロック内でも参照可能
end
puts sum 

numbers = [1,2,3,4]
sum = 0

numbers.each{|n| sum += n}# do~endの代わりに{}は使える
puts sum


#ブロックを使う配列のメソッド

numbers = [1,2,3,4,5]
new_numbers = []
numbers.each{|n| new_numbers << n * 10 }
puts new_numbers


#mapメソッドは戻り値をそのまま新しい変数に入れることができる
numbers = [1,2,3,4,5]
#ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map {|n| n * 10}
puts new_numbers

#selectメソッドは各要素に対してブロックを評価し戻り値が真の要素を集めた配列を返す
numbers = [1,2,3,4,5,6]
#ブロックの戻り値が真の時だけ要素が集められる
even_numbers = numbers.select {|n| n.even? }
puts even_numbers

#rejectはselectの反対でブロックの戻り値が偽である要素を集めるメソッド
numbers = [1,2,3,4,5,6]
#3の倍数を除外する
non_multiples_of_three = numbers.reject{|n| n % 3 == 0}
puts non_multiples_of_three

#findメソッドはブロックの戻り値が真になった時の最初の要素を返す
numbers = [1,2,3,4,5,6]
#ブロックの戻り値が最初に真になった要素
even_number = numbers.find{|n| n.even?}
puts even_number

#sumメソッドは要素の合計を求めるメソッド
numbers = [1,2,3,4]
puts numbers.sum
