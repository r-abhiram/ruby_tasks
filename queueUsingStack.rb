require_relative 'stackUsingLL'

class Queue
    attr_accessor :stack1, :stack2

    def initialize
        @stack1 = LinkedList::Stack.new
        @stack2 = LinkedList::Stack.new
    end

    def enqueue(value)
        while @stack1.top != -1
            @stack2.push(@stack1.pop)
        end

        @stack1.push(value)

        while @stack2.top != -1
            @stack1.push(@stack2.pop)
        end
    end

    def dequeue
        return @stack1.pop
    end

    def sum
        return @stack1.sum
    end

    def top
        return @stack1.top
    end

end

queue = Queue.new

puts "Enter a choice: \n1 -> Enqueue\n2 -> Dequeue\n3 -> Sum\n4 -> Exit"
while true
    print "Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "Enter a number: "
        number = gets.chomp.to_i
        queue.enqueue(number)
    when 2
        if queue.top != -1
            poped_number = queue.dequeue
            puts "Popped number: #{poped_number}"
        else
            puts "Queue is empty"
        end
    when 3
        puts "The sum is: #{queue.sum}"
    when 4
        break
    else
        puts "Invalid choice"
    end
end