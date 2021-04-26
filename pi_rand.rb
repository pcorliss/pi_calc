def point_in_circle?(x, y)
  Math.sqrt(x**2 + y**2) <= 1
end

def rand_point
  return [rand, rand]
end

puts "Evenly divisible grid"
9.times do |i|
  iterations = 10**i
  points_per_side = Math.sqrt(iterations)
  gap = 1 / points_per_side.to_f
  count = 0
  in_circle = 0
  x = 0
  while x <= 1 do
    y = 0
    while y <= 1 do
      count += 1
      in_circle += 1 if point_in_circle?(x, y)
      y += gap
    end
    x += gap
  end
  puts "#{i} - Count: #{in_circle} of #{count} or #{in_circle / count.to_f}"
  puts "\t#{4 * in_circle / count.to_f} vs #{Math::PI} - #{(4 * in_circle / count.to_f - Math::PI).abs} difference"
end

puts "Randomly generated points"
9.times do |i|
  iterations = 10**i
  count = iterations.times.count { point_in_circle?(*rand_point) }
  puts "#{i} - Count: #{count} of #{iterations} or #{count / iterations.to_f}"
  puts "\t#{4 * count / iterations.to_f} vs #{Math::PI} - #{(4 * count / iterations.to_f - Math::PI).abs} difference"
end
