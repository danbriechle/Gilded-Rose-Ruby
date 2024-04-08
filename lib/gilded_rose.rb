require 'items/normal'
require 'items/bri'
require 'items/passes'
require 'items/cake'

class GildedRose
  attr_reader :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    case @name
    when'Normal Item'
      @item = Normal.new(@days_remaining, @quality)
    when'Aged Brie'
      @item = Bri.new(@days_remaining, @quality)
    when'Legendary Sulfuras, Hand of Ragnaros'
      return
    when'Backstage passes to a TAFKAL80ETC concert'
      @item = Passes.new(@days_remaining, @quality)
    when'Conjured Mana Cake'
      @item = Cake.new(@days_remaining, @quality)
    end

    @item.tick
    @days_remaining = @item.days_remaining
    @quality = @item.quality
    @days_remaining -= 1 
  end
end
