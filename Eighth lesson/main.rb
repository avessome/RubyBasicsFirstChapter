# frozen_string_literal: true

# documentation comment
require_relative 'train'
require_relative 'route'
require_relative 'wagon'
require_relative 'station'
require_relative 'railway'
require_relative 'cargo_train'
require_relative 'cargo_wagon'
require_relative 'module_company'
require_relative 'passenger_train'
require_relative 'passenger_wagon'
require_relative 'instance_counter'
require_relative 'module_accessors'
require_relative 'validation'

BORDERLINE = '-' * 50
NEWLINE = "\n" * 2

railway = Railway.new
puts NEWLINE
puts "Добро пожаловать в программу 'Железная дорога'"
puts NEWLINE
loop do
  puts NEWLINE
  railway.menu_items

  menu_item = gets.chomp
  break unless menu_item != '0'

  railway.selected(menu_item)
end
