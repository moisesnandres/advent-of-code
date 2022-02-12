input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
file = File.open("2021/01.txt")
file_data = file.readlines.map(&:chomp).map(&:to_i)

def depth_measurement_increase(measurements)
  count = 0
  measurements.each_with_index do |measurement, index|
    next if index == 0
    if measurement > measurements[index - 1]
      count += 1
    end
  end
  count
end

p depth_measurement_increase(input)
p depth_measurement_increase(file_data)

def depth_measurement_increase_second_part(measurements)
  measurements_sum = measurements.each_cons(3).map(&:sum)
  depth_measurement_increase(measurements_sum)
end

p depth_measurement_increase_second_part(input)
p depth_measurement_increase_second_part(file_data)
