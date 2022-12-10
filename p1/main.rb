# frozen_string_literal: true

# :reek:TooManyStatements

# class for creating and editing files
class Filewriter
  def self.write_to_filef(string_array)
    File.open('F.txt', 'w:UTF-8') do |file|
      file.write string_array.join("\n")
    end
  end

  def self.change_and_rewrite_text_to_fileg
    File.open('F.txt', 'r:UTF-8') do |filef|
      File.open('G.txt', 'w:UTF-8') do |fileg|
        replacements = { 'a' => 'd', 'b' => 'e', 'c' => 'f' }
        strings = filef.read.split('').map { |letter| replacements[letter] || letter }.join
        fileg.write(strings)
      end
    end
  end
end
