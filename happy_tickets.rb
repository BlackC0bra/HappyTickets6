def f(n, m, x)
	(Math.sin(m * x) / Math.sin(x)) ** (2 * n)
end
 
def HappyTicketsCount(n, m)
	n1 = n * (m - 1) + 1
	s = 0
	a = 20
	for k in 1..(n1 - 1)
		x = 1 + (a + k * Math::PI / n1)
		s = s + f(n, m, x)
	end
	return (s / n1).round
end

n = HappyTicketsCount(3, 10)
p = 100.0 * n / (999999 - 100000)
printf("%d %.2f%", n, p) 
