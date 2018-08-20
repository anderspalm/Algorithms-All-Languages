=begin
For reusability, I have used a proc as this is part of a larger set of algorithms
Proc's offer a useful way of reusing methods with different block implementations.
=end

number_flip_proc = Proc.new { |item|
  fi = item[0]
  si = item[1]
  fi = fi.to_s + si.to_s
  si = fi[0...(si.to_s.length.to_i)]
  fi = fi[(fi.to_s.length.to_i - 1)..(fi.to_s.length)]
  item[0] = fi
  item[1] = si
}

def literals_manuipulation(input_array, input_proc)
  input_array.each.with_index do |item|
    item = input_proc.call(item)
  end
end

literals_manuipulation([[1,2],[2,3]], number_flip_proc)
