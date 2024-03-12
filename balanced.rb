require_relative 'stack'

stack = LinkedList::Stack.new

balanced = true
bracket_pairs = {
    '{' => '}', '(' => ')', '[' => ']'
}

file = File.read('text.txt')
file = file.split("")

file.each do |ele|
    if bracket_pairs.key?(ele)
        stack.push(ele)
    elsif bracket_pairs.value?(ele)
        if stack.isEmpty || bracket_pairs[stack.pop] != ele
            balanced = false
            break
        end
    end
end

if balanced && stack.isEmpty
    puts "balanced"
else
    puts "Not balanced"
end