class Service
	attr_accessor :state, :value

	def initialize(state, model, id)
    	@state = state ? "1":"0"
    	@value = service_value(model, id)
  	end

  	def enabled?
  		return true if state == "1"
  		false
  	end

  	def price
  		if enabled?
  			@value
  		else
  			0
  		end
  	end

  	private

  	def service_value(model, id)
  		return 0 if model.nil?

  		if id == 1
  			model.service_1
  		elsif id == 2
  			model.service_2
  		elsif id == 3
  			model.service_3
  		else
  			model.service_4
  		end
  	end
end
