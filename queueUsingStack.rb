class Stack
    attr_accessor :top1, :top2
    def initialize
        @arr1 = []
        @arr2 = []
        @top1 = -1
        @top2 = -1
        @sum = 0
    end

    def enqueue(num)
        while @top1 != -1
            @arr2.append(@arr1.pop)
            @top1 -= 1
            @top2 += 1
        end

        @arr1.append(num)
        @top1 += 1
        @sum += num

        while @top2 != -1
            @arr1.append(@arr2.pop)
            @top2 -= 1
            @top1 += 1
        end
    end

    def dequeue
        ele = @arr1.pop
        @sum -= ele
        return ele
    end

    def sum
        return @sum
    end

end

queue = Stack.new

puts "Enter a choice: \n1 -> Enqueue\n2 -> Dequeue\n3 -> Exit"
while true
    print "Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "Enter a number: "
        number = gets.chomp.to_i
        queue.enqueue(number)
    when 2
        if queue.top1 != -1
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