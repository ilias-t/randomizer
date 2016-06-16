require_relative './lib/list'
require_relative './lib/assets/awk_turtle'
require_relative './lib/assets/items'

list = List.new(ITEMS)

ITEMS.count.times do
  p "#{list.random}!"
  # pause for user input
  gets.chomp
  if list.items.count == 0
    AwkwardTurtle.animate
  end
end