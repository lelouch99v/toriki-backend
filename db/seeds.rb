# frozen_string_literal: true

require 'csv'

# メニューテーブルcsvインポート
CSV.foreach('db/csv/result.csv') do |row|
  Menu.create(id: 1, class_id: 1, name: 'aaa')
end
