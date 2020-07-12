require 'rails_helper'

RSpec.describe Folder, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:parent).optional }
    it { should have_many(:sub_folders) }
  end
end
