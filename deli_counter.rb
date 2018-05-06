#katzDeliLine = ["Ada", "Grace"];
#katzDeliLine = [];

def takeANumber(katzDeliLine, name) 
   katzDeliLine.push(name);
   return "Welcome, #{name}. You are number #{katzDeliLine.length} in line.";
end

# takeANumber(katzDeliLine, "Ethel");

=begin

Build a function nowServing. This function should return the first person in line and then remove that individual from the line. If there is nobody in line, it should return "There is nobody waiting to be served!"
=end 

def nowServing(katzDeliLine)
  if katzDeliLine.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katzDeliLine[0]}."
    katzDeliLine.shift
  end
end

#nowServing(katzDeliLine)

=begin
 // Build a function currentLine that returns the current line.
 // For example, if katzDeliLine is currently ["Ada", "Grace"],
 // currentLine(katzDeliLine) would return "The line is currently: 1. Ada 2. Grace".
 // If there is nobody in line, it should return "The line is currently empty."
=end 
 
def currentLine(katzDeliLine)
  line = []
  if katzDeliLine.length == 0
    puts "The line is currently empty."
  else
    katzDeliLine.each.with_index(1) do |name, index|
      line.push("#{index}. #{name}")
    end
    puts "The line is currently: #{line.join(" ")}"
  end
end

#currentLine(katzDeliLine)