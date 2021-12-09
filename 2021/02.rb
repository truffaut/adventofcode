def part_1
  horizontal, depth = [0,0]

  File.readlines('inputs/02').each do |command|
    dir, amount = command.split(' ')
    case dir
    when 'forward'
      horizontal += amount.to_i
    when 'down'
      depth += amount.to_i
    when 'up'
      depth -= amount.to_i
    end
  end

  horizontal * depth
end

puts "part 1 is: #{part_1}"

def part_2
  horizontal, depth, aim = [0,0,0]

  File.readlines('inputs/02').each do |command|
    dir, amount = command.split(' ')
    case dir
    when 'forward'
      horizontal += amount.to_i
      depth += (aim * amount.to_i)
    when 'down'
      aim += amount.to_i
    when 'up'
      aim -= amount.to_i
    end
  end

  horizontal * depth
end

puts "part 2 is: #{part_2}"


