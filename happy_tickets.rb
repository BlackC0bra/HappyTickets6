require 'mathn'
n = 3 # 2n — кол-во цифр в билете
#максимально возможная сумма n*9 + 1 
a = Array.new(n*9 + 1, 0)
b = Array.new(n*9 + 1, 0)
 
('0'+'0'*(n - 1)..'9'*n).each do |s| 
  sum = 0
  s.split('').select{|c| sum += c.to_i}
  a[sum] += 1
end

('1'+'0'*(n - 1)..'9'*n).each do |s| 
  sum = 0
  s.split('').select{|c| sum += c.to_i}
  b[sum] += 1
end

count = Vector[*a].inner_product(Vector[*b])
p = 100.0 * count / (('9'*2*n).to_i - ('1'+'0'*(2*n-1)).to_i)
 
puts "Number of lucky tickets: #{count}"
printf("%.2f%", p)
