require_relative 'stack'

class Queue
    attr_accessor :stack1

    def initialize
        @stack1 = LinkedList::Stack.new
    end

    def enqueue(value)
        @stack2 = LinkedList::Stack.new
        while !@stack1.isEmpty
            @stack2.push(@stack1.pop)
        end

        @stack1.push(value)

        while !@stack2.isEmpty
            @stack1.push(@stack2.pop)
        end
    end

    def dequeue
        return @stack1.pop
    end

    def sum
        return @stack1.sum
    end

    def isEmpty
        return @stack1.isEmpty
    end

end
