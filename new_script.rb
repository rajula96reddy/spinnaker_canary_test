counts = Hash.new(0)

ARGV[1].to_i.times do
  output = `curl --insecure -H "Host: echo.com" -s https://#{ARGV[0]} | grep 'hostname'`
  counts[output.strip.split.last] += 1
end

puts counts
