module Folder::FolderActions
  extend ActiveSupport::Concern
 
  included do
    has_many :sub_folders
    belongs_to :parent, optional: true
  end

  def f_create(name)
    Folder.create!(name: name, parent: self)
  end

  def f_path(folder = self)
    return "#{folder.name}" unless folder.parent.present?
     f_path(folder.parent) + "/#{folder.name}"
  end

  def f_file_create(name, role)
    FolderFile.create!(folder_id: self.id, name: name, role: role)
  end
 
   
  private

  def check_folder_name?(name)
    folder.sub_folders.where(['name LIKE ?', "%#{name}%"])
  end

  def check_file_name?(name)
    folder.file_folders.where(['name LIKE ?', "%#{name}%"])
  end
 end