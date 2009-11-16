module OpenFlashChart

  class XAxisLabels < Base
    
    def set_steps(steps = 1)
      @steps = steps
    end
    
    def set_vertical
      @rotate = "vertical"
    end
    
  end

end