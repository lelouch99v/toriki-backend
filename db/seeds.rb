# frozen_string_literal: true

require 'csv'

# メニュー分類テーブルcsvをインポート
def import_classification
  isFirst = true
  id = 1
  CSV.foreach('db/csv/classification.csv') do |row|
    if isFirst
      isFirst = false
    else
      Classification.create(id: id, name: row[1])
      id += 1
    end
  end
end

# メニューテーブルcsvインポート
def import_menu
  isFirst = true
  id = 1
  CSV.foreach('db/csv/result.csv') do |row|
    if isFirst
      isFirst = false
    else
      Menu.create(id: id, class_id: row[2], name: row[1])
      id += 1
    end
  end
end

import_classification
import_menu
