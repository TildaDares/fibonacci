def fib(n)
    first_num = 0
    second_num = 1
    third_number = 0
  n.times do
    print "#{second_num} " 
      third_number = first_num + second_num
      first_num = second_num
      second_num = third_number
  end
end

def fib_rec(n)
  n < 2 ? n : fib_rec(n-1) + fib_rec(n-2)
end

def main(n)
  for i in (1..n)
    print fib_rec(i)
    print ' '
  end
  puts "\n"
end

 main(10)
 fib(5)