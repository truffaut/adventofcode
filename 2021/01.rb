def part_1
  count = 0
  last_value = nil

  File.readlines('inputs/01').each do |line|
    line = line.to_i

    if !last_value 
      last_value = line
      next
    end

    count += 1 if line > last_value
    last_value = line
  end

  count
end

puts "part 1 is equal to: #{part_1}"

def part_2
  count = 1
  last_3 = [nil, nil, nil]
  last_sum = nil
  target = 0
  

  File.readlines('inputs/01').each do |measurement|
    measurement = measurement.to_i
    
    position = target % 3

    if !last_3[position]
      last_3[position] = measurement
      target += 1

      next
    end

    if !last_sum
      last_sum = last_3.sum
      next
    end

    last_3[position] = measurement

    if last_3.sum > last_sum
      count += 1
    end
    
    last_sum = last_3.sum
    target += 1
  end

  count
end

puts "part 2 is equal to: #{part_2}"
