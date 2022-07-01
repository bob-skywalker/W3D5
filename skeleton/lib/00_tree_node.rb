class PolyTreeNode
    def initialize(val)
        @parent = nil 
        @val = val
        @children = []
    end 
    
    def value 
        @val
    end

    def parent
        @parent 
    end 

    def children 
        @children 
    end

    def parent=(node)
        if @parent != nil
            self.parent.children.delete(self)
        end
        self.parent
        @parent = node
        return nil if node == nil
        # return nil if self == nil

        

        # @parent = node

        unless node.children.include?(self)
            node.children << self 

        end
        # # self.parent.children - [self]
        # if @parent != nil
        #     self.parent.children - [self]
        # end
        # # return nil if @parent.nil? 
        # @parent = node
        
        # unless @parent.children.include?(self)
        #     @parent.children << self
        # end 

    
    end 

    
    def add_child(node)
        node.parent=self
        if !self.children.include?(node)   
            self.children << node
        end  
    end
    
    def remove_child(node)

        if !self.children.include?(node)
            raise "error"
        else 
            node.parent = nil 
        end 
    end 

    def dfs(target_value)
        return self if self.value == target_value
        return nil if self.children.length == 0


        self.children.each do |child|
            result = child.dfs(target_value)
            return result unless result.nil?
        end 

        nil
    end  

    def bfs(target_value)
        return self if self.value == target_value
        return nil if self.children.length == 0

        
    end 
end 