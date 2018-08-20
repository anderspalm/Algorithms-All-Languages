=begin
For reusability, I have used a proc as this is part of a larger set of algorithms
Proc's offer a useful way of reusing methods with different block implementations.
=end

palindrome_proc = Proc.new { |input_array_item|
  first_half = input_array_item[0..(input_array_item.length/2)]
  second_half = input_array_item[(first_half.length - 1)...input_array_item.length].reverse
  if first_half == second_half
    puts true
  else
    puts false
  end
}

def literals_manuipulation(input_array, input_proc)
  input_array.each.with_index do |item, index|
    item = input_proc.call(item)
  end
end

literals_manuipulation(["abc","ababa"], palindrome_proc)
