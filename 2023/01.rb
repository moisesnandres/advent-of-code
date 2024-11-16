# https://adventofcode.com/2023/day/1

file = File.open("2023/01_input.txt")
file_data = file.readlines.map(&:chomp)

def calibrate(lines, second_part = false)
  lines.map do |line|
    if second_part
      line.gsub!(/one|two|three|four|five|six|seven|eight|nine/, 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9')
    end
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
calibrate(example)

calibrate(file_data)

second_example = "two1nine
eightwothree
abcone2threexyz
xtwone3four
4nineeightseven2
zoneight234
7pqrstsixteen"
example = second_example.split("\n")
calibrate(example, true)

calibrate(file_data, true)
