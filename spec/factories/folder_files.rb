FactoryBot.define do
  factory :folder_file, class: 'FolderFiles' do
    name { Faker::File.file_name }
    role { Faker::File.extension }
    folder { nil }
  end
end
