module LinkedList
    class Node
        attr_accessor :val, :addr
    
        def initialize(val, addr = nil)
            @val = val
            @addr = addr
        end
    
    end
    
    class Stack
        def initialize()
            @head = nil
            @sum = 0
        end
    
        def push(value)
            @head = Node.new(value, @head)
    
            @sum += value if value.is_a? Numeric
        end
    
        def pop
            ele = @head.val
            @head = @head.addr
    
            @sum -= ele if ele.is_a? Numeric
            return ele
        end

        def isEmpty
            return @head == nil ? true : false
        end

        def sum
            return @sum
        end
    
    end
end