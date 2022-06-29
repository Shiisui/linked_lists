class LinkedList
    @@size = 0
    def initialize
        @node = []
        @node << Node.new
    end

    def append(value)
        if @node[@@size] != nil
            @node[@@size].value(value)
        elsif @@size < 2
            @node[@@size-1].next_node(Node.new(value))
        else
            @node[@@size].next_node(Node.new(value))
        end
        
        @@size += 1
    end

    def size 
        @@size
    end

    def head
        @node[0]
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

my_linked_list.append("George")

my_linked_list.append("Jerome")






p my_linked_list.head



p my_linked_list.size 
