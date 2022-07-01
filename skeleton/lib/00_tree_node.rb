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

    


end 