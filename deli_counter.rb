
def take_a_number(katzDeliLine, name) 
   katzDeliLine.push(name);
   return "Welcome, #{name}. You are number #{katzDeliLine.length} in line.";
end

def now_serving(katzDeliLine)
  if katzDeliLine.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katzDeliLine[0]}."
    katzDeliLine.shift
  end
end

def line(katzDeliLine)
  line_array= []
  if katzDeliLine.length == 0
    puts "The line is currently empty."
  else
    katzDeliLine.each.with_index(1) do |name, index|
      line_array.push("#{index}. #{name}")
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end
