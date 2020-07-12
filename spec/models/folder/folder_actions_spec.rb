require 'rails_helper'

RSpec.describe 'Folder::FolderActions' do
  describe 'Folders' do
    let(:root) { create(:folder) }
    context 'when valid folder' do
      it 'creating a new directory valid' do
        root.f_create("new_directory")
        expect(root.sub_folders.length).to eq(1)
      end
      it 'creating a new directory and sub_directory valid' do
        directory = root.f_create("new_directory2")
        directory.f_create("new_directory")
        expect(directory.sub_folders.first.name).to eq('new_directory')
      end
    end
    context 'when invalid folder' do
      it 'creating two directories with the same name' do
        directory1 = root.f_create("new_directory")
        expect {root.f_create("new_directory")}.to  raise_error
      end
      it 'creating unnamed directory' do
        expect {root.f_create(nil)}.to  raise_error
      end
    end
  end
end
