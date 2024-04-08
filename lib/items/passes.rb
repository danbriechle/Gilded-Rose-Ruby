require 'item'

class Passes < Item
  def tick 
    case @days_remaining
    when -Float::INFINITY..0
      @quality = 0 
    when 1..5
      @quality += 3
    when 5..10
      @quality += 2
    else
      @quality += 1 
    end
  
    @quality = 50 if @quality >= 50
  end
end