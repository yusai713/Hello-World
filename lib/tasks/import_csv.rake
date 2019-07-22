namespace :import_csv do
  # rake import_csv:csv_rakes
  desc "CsvRake CSVデータのインポート" #タスクの説明を書く
  task csv_rakes: :environment do
  CsvRake.import('db/csv_data/rake_data.csv')
  end
end
