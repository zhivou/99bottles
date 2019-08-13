class Bottles

  #
  # You can pass bottle number
  #
  def verse(bottle)
    "#{bottle} bottle#{"s" if bottle > 1} of beer on the wall, #{bottle} bottle#{"s" if bottle > 1} of beer." +
        "\nTake #{bottle == 1? "it" : "one"} down and pass it around, " + last_part(bottle) +
        "\n"
  end

  private
  def last_part(bottle)
    if bottle == 1
      "no more bottles of beer on the wall."
    else
      "#{bottle - 1} bottle#{"s" if bottle - 1 > 1} of beer on the wall."
    end

  end
end

puts Bottles.new.verse(99)