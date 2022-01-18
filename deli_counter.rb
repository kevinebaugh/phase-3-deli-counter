require "pry"

katz_deli = []

def line(deli)
  if deli.size > 0
    deli_string = deli.each_with_index.map do |name, index|
      "#{index + 1}. #{name}"
    end.join(" ")
    puts "The line is currently: #{deli_string}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(deli, name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.size > 0
    puts "Currently serving #{deli.first}."
    deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
