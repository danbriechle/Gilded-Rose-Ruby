class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    case @name
    when'Normal Item'
      normal_tick
    when'Aged Brie'
      bri_tick
    when'Legendary Sulfuras, Hand of Ragnaros'
      return
    when'Backstage passes to a TAFKAL80ETC concert'
      passes_tick
    when'Conjured Mana Cake'
      cake_tick
    end

    @days_remaining -= 1 
  end

  def normal_tick 
    return if @quality == 0 
  
    @days_remaining.positive? ? @quality -= 1 : @quality -= 2
  end

  def bri_tick
    @days_remaining.positive? ? @quality += 1 :  @quality += 2
    @quality = 50 if @quality >= 50 
  end

  def passes_tick
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

  def cake_tick
    return if @quality == 0

    @days_remaining.positive? ? @quality -= 2 : @quality -= 4
  end
end
