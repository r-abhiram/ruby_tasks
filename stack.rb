require_relative 'stackUsingLL'

stack = LinkedList::Stack.new

puts "Enter a choice: \n1 -> Push\n2 -> Pop\n3 -> Sum\n4 -> Exit"
while true
    print "Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "Enter a number: "
        number = gets.chomp.to_i
        stack.push(number)
    when 2
        if stack.top != -1
            poped_number = stack.pop
            puts "Popped number: #{poped_number}"
        else
            puts "Stack is empty"
        end
    when 3
        puts "The sum of elements is: #{stack.sum}"
    when 4
        break
    else
        puts "Invalid choice"
    end
end

puts stack
