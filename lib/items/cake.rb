class Cake < Item
  def tick 
    return if @quality == 0

    @days_remaining.positive? ? @quality -= 2 : @quality -= 4
  end
end