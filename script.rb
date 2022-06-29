require 'pry-byebug'
class LinkedList
    @@size = 0
    def initialize
        @list = []
        @list[@@size] = Node.new
    end

    def append(value)
        if @list[@@size] != nil
            @list[@@size].value(value)
        else
            @list[@@size] = Node.new
            @list[@@size].value(value)
            @list[@@size-1].next_node(@list[@@size])
        end
        @@size += 1
    end

    def prepend_(value)
        
        @list.unshift Node.new
        @list[0].value(value)
        @list[0].next_node(@list[1])
       
        @@size += 1
    end

    def size 
        puts @@size
    end

    def head
        puts @list[0]
    end
    
    def tail 
        puts @list[-1]
    end

    def at(index)
        puts @list[index]
    end

    def find(value)
        @list.each_with_index do |node, index|
            return puts "found at " "#{index}"if node.get_value == value
        end
        p nil
    end

    def pop
        p @list
        @list[-1] = nil
        @list[-2].next_node(nil)
        p @list
    end

    def contains?(value)
        @list.each do |node|
            return p true if node.get_value == value 
            return p false
        end
    end

    def to_s 
        my_string = ""
        @list.each do |node|
            str = node.get_value
            my_string <<"(#{str}) => "
             
        end
        puts my_string + "nil"
    end
   
end

class Node 
    def initialize
        @value = nil
        @next_node = nil
    end
    
    def value(value=nil)
        @value = value 
    end

    def get_value 
        @value
    end

    
    def next_node(next_node=nil) 
        @next_node = next_node
    end
    
    def get_next_node 
        @next_node
    end
end

my_linked_list = LinkedList.new

my_linked_list.append("1")

my_linked_list.append("2")

my_linked_list.append("3")

my_linked_list.prepend_("5")

my_linked_list.to_s