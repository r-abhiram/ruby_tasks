module LinkedList
    class Node
        attr_accessor :val, :addr
    
        def initialize(val, addr = nil)
            @val = val
            @addr = addr
        end
    
    end
    
    class Stack
        attr_accessor :top
        def initialize()
            @head = nil
            @sum = 0
            @top = -1
        end
    
        def push(value)
            @head = Node.new(value, @head)
    
            @sum += value if value.is_a? Numeric
            @top += 1
        end
    
        def pop
            ele = @head.val
            @head = @head.addr
    
            @sum -= ele if ele.is_a? Numeric
            @top -= 1
            return ele
        end
    
        def sum
            return @sum
        end
    
    end
end