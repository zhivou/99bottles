class Bottles

  #
  # You can pass bottle number
  #
  def verse(bottle)
    "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer." +
        "\nTake one down and pass it around, #{bottle - 1} bottle#{"s" if bottle - 1 > 1} of beer on the wall." +
        "\n"
  end
end

puts Bottles.new.verse(99)