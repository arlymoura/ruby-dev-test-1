class CreateFolderFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :folder_files do |t|
      t.string :name
      t.string :role
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
