# frozen_string_literal: true

require_relative 'main'

RSpec.describe Auto do
  context 'with full class' do
    it 'should have all fields and methods' do
      auto = Auto.new(2003, 10_000)
      expect(auto.mileage).to eq(10_000)
      expect(auto.rel_year).to eq(2003)
      expect(auto.avg_mileage).to be_within(0.0000001).of(10_000.to_f / (2022 - 2003))
    end
  end
end
RSpec.describe AutoInherited do
  context 'with full class' do
    it 'should have all fields and methods' do
      auto = AutoInherited.new(2003, 10_000, 9_000_325, 'sedan', 'FIO1')
      expect(auto.mileage).to eq(10_000)
      expect(auto.rel_year).to eq(2003)
      expect(auto.number).to eq(9_000_325)
      expect(auto.model).to eq('sedan')
      expect(auto.owner).to eq('FIO1')
      expect(auto.avg_mileage).to be_within(0.0000001).of(10_000.to_f / (2022 - 2003))
      p auto.class.ancestors
      expect(auto.class.ancestors.include? Auto).to be(true)
    end
  end
end
