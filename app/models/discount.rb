class Discount
	def initialize(value, percentage)
    	@value = value
    	@percentage = percentage
  	end

  	def apply_discount(amount)
  		if @percentage
  			amount * (1.0 - @value / 100)
  		else
  			[amount - @value, 0].max
  		end
  	end

  	def to_s
  		if @percentage
  			@value.to_s + "%"
  		else
  			@value.to_s + "$"
  		end
  	end
end