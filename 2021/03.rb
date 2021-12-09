def part_1
  common = Array.new(12, 0)

  File.readlines("inputs/03").each do |binary_string|
    binary_string.strip.each_char.with_index { |bit, i| bit == "0" ? common[i] -= 1 : common[i] += 1 }
  end

  gamma = common.map { |num| num > 0 ? 1 : 0 }
  epsilon = gamma.map { |num| num == 0 ? 1 : 0 }

  gamma.join.to_i(2) * epsilon.join.to_i(2)
end

puts "part 1 is: #{part_1}"

def part_2

end