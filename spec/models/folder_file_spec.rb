require 'rails_helper'

RSpec.describe FolderFile, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:folder) }
  end
end
