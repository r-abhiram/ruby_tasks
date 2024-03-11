class Stack
    attr_accessor :top
    def initialize
        @arr = []
        @top = -1
        @sum = 0
    end

    def push(num)
        @arr.append(num)
        @top += 1
        @sum += num
    end

    def pop
        @top -= 1
        element = @arr.pop
        @sum -= element
        return element
    end

    def sum
        return @sum
    end
end

op = Stack.new
puts "Enter a choice: \n1 -> Push\n2 -> Pop\n3 -> Sum\n4 -> Exit"
while true
    print "Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "Enter a number: "
        number = gets.chomp.to_i
        op.push(number)
    when 2
        if op.top != -1
            poped_number = op.pop
            puts "Popped number: #{poped_number}"
        else
            puts "Stack is empty"
        end
    when 3
        sum = op.sum
        puts "The sum of elements is: #{sum}"
    when 4
        break
    else
        puts "Invalid choice"
    end
end
