class FolderFile < ApplicationRecord
  belongs_to :folder
  has_one_attached :file

  validates :name, :folder, presence: true
  
  validates :name, uniqueness: { case_sensitive: false, scope: :folder,
    message: 'Já existe um Arquivo com esse nome' }
end
