class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :calss_id
      t.string :name

      t.timestamps
    end
  end
end
