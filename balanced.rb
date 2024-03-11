class Stack
    attr_accessor :top
    def initialize
        @arr = []
        @top = -1
    end

    def push(num)
        @arr.append(num)
        @top += 1
    end

    def pop
        @top -= 1
        return @arr.pop
    end

end

op = Stack.new
balanced = true
file = File.read('text.txt')
file = file.split("")
file.each do |ele|
    if ele == "(" || ele == "{" || ele == "["
        op.push(ele)
    elsif ele == ")"
        if op.pop != "("
            balanced = false
            break
        end
    elsif ele == "}"
        if op.pop != "{"
            balanced = false
            break
        end
    elsif ele == "]"
        if op.pop != "["
            balanced = false
            break
        end
    end
end

if balanced && op.top == -1
    puts "balanced"
else
    puts "Not balanced"
end