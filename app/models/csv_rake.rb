class CsvRake < ApplicationRecord
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << { name: row['name'], age: row['age'], address: row['address'] }
    end
    puts "インポートが始まります・・・".green
    CsvRake.create!(list)
    puts "インポートに成功しました！".blue

    rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗しました！：#{invalid}".red
  end
end
