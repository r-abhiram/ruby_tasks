require_relative 'stackUsingLL'

stack = LinkedList::Stack.new

balanced = true

file = File.read('text.txt')
file = file.split("")

file.each do |ele|
    if ele == "(" || ele == "{" || ele == "["
        stack.push(ele)
    elsif ele == ")"
        if stack.pop != "("
            balanced = false
            break
        end
    elsif ele == "}"
        if stack.pop != "{"
            balanced = false
            break
        end
    elsif ele == "]"
        if stack.pop != "["
            balanced = false
            break
        end
    end
end

if balanced && stack.top == -1
    puts "balanced"
else
    puts "Not balanced"
end