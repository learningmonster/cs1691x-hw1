class Dessert
	attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
		return @calories < 200 ? true : false
		#return true unless calories >= 200
		#return false
  end
  def delicious?
    # your code here
		return true
  end
end

class JellyBean < Dessert
	attr_accessor :flavor
	def initialize(flavor)
		# your code here
		@flavor = flavor
		name = flavor + " jelly bean"
		super(name, 5)
	end
	def delicious?
		# your code here
		return true unless flavor == "licorice"
		return false
		#return @flavor != "licorice" ? true : false
  end
end
