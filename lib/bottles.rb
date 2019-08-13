class Bottles

  #
  # You can pass bottle number
  #
  def verse(bottle)
    first_part(bottle) + middle_part(bottle) + last_part(bottle) + "\n"
  end

  def verses(*bottle)
    result = []
    if bottle.is_a?(Array)
      bottle.each do |b|
        result << first_part(b) + middle_part(b) + last_part(b) + "\n"
        result << "\n"
      end
    else
      verse(bottle)
    end
    result.pop
    result.join
  end

  private
  def first_part(bottle)
    if bottle == 0
      "No more bottles of beer on the wall, no more bottles of beer." + "\nGo to the store and buy some more, 99 bottles of beer on the wall."
    else
      "#{bottle} bottle#{"s" if bottle > 1} of beer on the wall, #{bottle} bottle#{"s" if bottle > 1} of beer."
    end
  end

  def middle_part(bottle)
    if bottle == 0
      ""
    else
      "\nTake #{bottle == 1? "it" : "one"} down and pass it around, "
    end
  end

  def last_part(bottle)
    return "" if bottle == 0
    if bottle == 1
      "no more bottles of beer on the wall."
    else
      "#{bottle - 1} bottle#{"s" if bottle - 1 > 1} of beer on the wall."
    end

  end
end

#puts Bottles.new.verses(99, 98)