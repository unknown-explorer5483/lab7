# frozen_string_literal: true

require_relative './main'

puts 'Введите год выпуска и пробег через пробел:'
auto_data = gets.split(' ')
year = auto_data[0].to_i
mileage = auto_data[1].to_f
puts 'Вывод класса:'
auto = Auto.new(year, mileage)
auto.print
puts "Средний пробег:#{auto.avg_mileage}"
puts 'Введите номер, марку, год выпуска, пробег и фамилию владельца через пробел:'
auto_data = gets.split(' ')
number = auto_data[0].to_i
model = auto_data[1]
year = auto_data[2].to_i
mileage = auto_data[3].to_f
owner = auto_data[4]
auto_new = AutoInherited.new(year, mileage, number, model, owner)
auto_new.print
puts "Средний пробег:#{auto_new.avg_mileage}"
