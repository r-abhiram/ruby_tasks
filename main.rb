require_relative 'queue'

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
        if !queue.isEmpty
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