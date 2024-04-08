require 'item'

class Normal < Item
  def tick 
    return if @quality == 0 
  
    @days_remaining.positive? ? @quality -= 1 : @quality -= 2
  end
end
