# frozen_string_literal: true

require_relative 'main'

require 'faker'

RSpec.describe Filewriter do
  context 'with normal parameters' do
    it 'should generate files F and G' do
      File.delete('F.txt') if File.exist?('F.txt')
      File.delete('G.txt') if File.exist?('G.txt')
      string = Faker::Lorem.sentences(number: rand(5..10)).join("\n")
      replacements = { 'a' => 'd', 'b' => 'e', 'c' => 'f' }
      string_changed = string.gsub!(/\w/, replacements)
      file = File.new('F.txt', 'w:UTF-8')
      file.write string
      file.close
      Filewriter.change_and_rewrite_text_to_fileg
      expect(File.exist?('G.txt')).to be true
      expect(File.zero?('G.txt')).to be false
      fileg = File.new('G.txt', 'r:UTF-8')
      expect(fileg.read).to eq(string_changed)
    end
  end
end
