# frozen_string_literal: true

# class Auto
class Auto
  attr_reader :rel_year, :mileage

  def initialize(rel_year, mileage)
    @rel_year = rel_year
    @mileage = mileage
  end

  def avg_mileage
    @mileage.to_f / (2022 - @rel_year)
  end

  def print
    puts "Год выпуска:#{@rel_year}"
    puts "Пробег:#{@mileage}"
  end
end

# updated class Auto
class AutoInherited < Auto
  attr_reader :number, :model, :owner

  def initialize(rel_year, mileage, number, model, owner)
    super(rel_year, mileage)
    @number = number
    @model = model
    @owner = owner
  end

  def print
    super()
    puts "Номер:#{@number}"
    puts "Марка:#{@model}"
    puts "Фамилия владельца:#{@owner}"
  end
end
