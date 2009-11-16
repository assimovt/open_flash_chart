module OpenFlashChart

  class XAxis < Base
    def set_3d(v)
      @threed = v
    end
    
    # for some reason the json that needs to be produced is like this:
    # "x_axis": { "steps": X, "offset": false, "labels": { "labels": [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ], "steps": X } }
    # note the "labels":{"labels": ....} and "steps":{"steps": .... }
    
    def set_labels(labels)
      @labels = labels
      @labels = {:labels => labels} unless labels.is_a?(XAxisLabels)
    end
    
    def set_steps(steps = nil)
      return if steps.nil?
      @steps = steps
      @labels.is_a?(XAxisLabels) ? @labels.set_steps(steps) : @labels.merge!({:steps => steps})
    end

    alias_method :labels=, :set_labels
  end

end