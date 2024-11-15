# https://adventofcode.com/2023/day/1

def calibrate(lines)
  lines.map do |line|
    first_digit = line.chars.find { |char| char == char.to_i.to_s }
    last_digit = line.reverse.chars.find { |char| char == char.to_i.to_s }
    "#{first_digit}#{last_digit}".to_i
  end.sum

end

first_example = "1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet"
example = first_example.split("\n")
calibrate(example) # 142

file = File.open("2023/01_input.txt")
file_data = file.readlines.map(&:chomp)
calibrate(file_data)
