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

def main
  puts "How many numbers of the fibonacci would you like to print?"
  num = gets.chomp

  until /[0-9]/ =~ num
    puts 'Invalid'
    puts "How many numbers of the fibonacci would you like to print?"
    num = gets.chomp
  end

  for i in (1..num.to_i)
    print fib_rec(i)
    print ' '
  end
  puts "\n"
end

 main
 fib(5)