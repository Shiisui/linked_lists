require 'pry-byebug'
class LinkedList
    @@size = 0
    def initialize
        @list = []
        @list << Node.new
    end

    def append(value)
        if @list[@@size] != nil
            @list[@@size].value(value)
        else 
            @list[@@size] = Node.new(value)
            @list[@@size-1].next_node(@list[@@size])
        end
        
        @@size += 1
    end

    def size 
        @@size
    end

    def head
        @list[0]
    end

   
end

class Node 
    def initialize(value=nil, next_node=nil)
        @value = value 
        @next_node = next_node
    end
    def value(value=nil)
        @value = value 
    end

    def next_node(next_node=nil) 
        @next_node = next_node
    end
end
my_linked_list = LinkedList.new

my_linked_list.append("1")

my_linked_list.append("2")

my_linked_list.append("3")





p my_linked_list.head



p my_linked_list.size 
