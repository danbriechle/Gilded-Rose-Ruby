require 'item'
class Bri < Item
  def tick 
    @days_remaining.positive? ? @quality += 1 :  @quality += 2
    @quality = 50 if @quality >= 50 
  end
end