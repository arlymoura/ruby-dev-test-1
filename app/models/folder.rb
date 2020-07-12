class Folder < ApplicationRecord
  include FolderActions

  belongs_to :parent, class_name: "Folder", optional: true
  has_many :sub_folders, class_name: "Folder", foreign_key: "parent_id"
  has_many :folder_files

  validates :name, uniqueness: { case_sensitive: false, scope: :parent,
    message: 'Já existe uma Pasta com esse nome' }

end
