# frozen_string_literal: true

require_relative './main'

# Filewriter.generate_filef
puts 'Введите количество строк:'
len = gets.to_i
string_array = []
len.times do |counter|
  puts "Введите #{counter + 1} строку:"
  string_array.push(gets.chomp)
end
Filewriter.write_to_filef(string_array)
Filewriter.change_and_rewrite_text_to_fileg
