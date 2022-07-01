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
        @parent = node

        return nil if @parent.nil? 
        
        unless @parent.children.include?(self)
            @parent.children << self
        end 

    
    end 


end 